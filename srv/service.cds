using {ZI_SD_RASTREIO_CT_CDS} from './external/ZI_SD_RASTREIO_CT_CDS';
using {fs.agr.ct.trackingnumber.db as trackingNumber} from '../db/schema';

@path: '/Rastreio'
service RastreioService {
    entity RastreioEntity as projection on ZI_SD_RASTREIO_CT_CDS.ZI_SD_RASTREIO_CT;
    entity ContractConversionEntity as projection on trackingNumber.ContractConversion;
}