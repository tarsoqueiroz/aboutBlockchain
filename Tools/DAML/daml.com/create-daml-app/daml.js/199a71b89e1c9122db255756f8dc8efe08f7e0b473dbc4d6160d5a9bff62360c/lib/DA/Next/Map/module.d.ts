// Generated from DA/Next/Map.daml
/* eslint-disable @typescript-eslint/camelcase */
/* eslint-disable @typescript-eslint/no-namespace */
/* eslint-disable @typescript-eslint/no-use-before-define */
import * as jtv from '@mojotech/json-type-validation';
import * as damlTypes from '@daml/types';
/* eslint-disable-next-line @typescript-eslint/no-unused-vars */
import * as damlLedger from '@daml/ledger';

export declare type Map<k_a9wC, v_a9wD> = {
  textMap: { [key: string]: v_a9wD };
};

export declare const Map :
  (<k_a9wC, v_a9wD>(k_a9wC: damlTypes.Serializable<k_a9wC>, v_a9wD: damlTypes.Serializable<v_a9wD>) => damlTypes.Serializable<Map<k_a9wC, v_a9wD>>) & {
};

