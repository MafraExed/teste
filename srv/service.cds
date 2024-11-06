using {ZI_SD_RASTREIO_CT_CDS} from './external/ZI_SD_RASTREIO_CT_CDS';

@path: '/Rastreio'
service RastreioService {
    entity RastreioEntity as projection on ZI_SD_RASTREIO_CT_CDS.ZI_SD_RASTREIO_CT;
}