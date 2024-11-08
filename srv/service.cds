using {ZI_SD_RASTREIO_CT_CDS} from './external/ZI_SD_RASTREIO_CT_CDS';
using {ZGW_SD_SALESORDER_CANCEL_SRV} from './external/ZGW_SD_SALESORDER_CANCEL_SRV';
using {ZC_SD_MM_STATUS_CT_CDS} from './external/ZC_SD_MM_STATUS_CT_CDS';
using {fs.agr.ct.trackingnumber.db as DB} from '../db/schema';


@path: '/Rastreio'
service RastreioService {
    entity RastreioEntity as projection on ZI_SD_RASTREIO_CT_CDS.ZI_SD_RASTREIO_CT;
    entity ZMME_SALESORDER_CANCELSet as projection on ZGW_SD_SALESORDER_CANCEL_SRV.ZMME_SALESORDER_CANCELSet;
    entity AbgruHelpSet as projection on ZGW_SD_SALESORDER_CANCEL_SRV.AbgruHelpSet;
    entity ZC_SD_MM_STATUS_CT as projection on ZC_SD_MM_STATUS_CT_CDS.ZC_SD_MM_STATUS_CT;
    entity ContractConversion as projection on DB.ContractConversion;
}