// Generated from DA/Generics.daml
/* eslint-disable @typescript-eslint/camelcase */
/* eslint-disable @typescript-eslint/no-namespace */
/* eslint-disable @typescript-eslint/no-use-before-define */
import * as jtv from '@mojotech/json-type-validation';
import * as damlTypes from '@daml/types';
/* eslint-disable-next-line @typescript-eslint/no-unused-vars */
import * as damlLedger from '@daml/ledger';

export declare type DecidedStrictness =
  | 'DecidedLazy'
  | 'DecidedStrict'
  | 'DecidedUnpack'
;

export declare const DecidedStrictness:
  damlTypes.Serializable<DecidedStrictness> & {
  }
& { readonly keys: DecidedStrictness[] } & { readonly [e in DecidedStrictness]: e }
;


export declare type SourceStrictness =
  | 'NoSourceStrictness'
  | 'SourceLazy'
  | 'SourceStrict'
;

export declare const SourceStrictness:
  damlTypes.Serializable<SourceStrictness> & {
  }
& { readonly keys: SourceStrictness[] } & { readonly [e in SourceStrictness]: e }
;


export declare type SourceUnpackedness =
  | 'NoSourceUnpackedness'
  | 'SourceNoUnpack'
  | 'SourceUnpack'
;

export declare const SourceUnpackedness:
  damlTypes.Serializable<SourceUnpackedness> & {
  }
& { readonly keys: SourceUnpackedness[] } & { readonly [e in SourceUnpackedness]: e }
;


export declare type Associativity =
  | 'LeftAssociative'
  | 'RightAssociative'
  | 'NotAssociative'
;

export declare const Associativity:
  damlTypes.Serializable<Associativity> & {
  }
& { readonly keys: Associativity[] } & { readonly [e in Associativity]: e }
;


export declare type Infix0 = {
  associativity: Associativity;
  fixity: damlTypes.Int;
};

export declare const Infix0:
  damlTypes.Serializable<Infix0> & {
  }
;


export declare type Fixity =
  |  { tag: 'Prefix'; value: {} }
  |  { tag: 'Infix'; value: Infix0 }
;

export declare const Fixity:
  damlTypes.Serializable<Fixity> & {
  }
;


export declare type K1<i_a2Fj, c_a2Fk, p_a2Fl> = {
  unK1: c_a2Fk;
};

export declare const K1 :
  (<i_a2Fj, c_a2Fk, p_a2Fl>(i_a2Fj: damlTypes.Serializable<i_a2Fj>, c_a2Fk: damlTypes.Serializable<c_a2Fk>, p_a2Fl: damlTypes.Serializable<p_a2Fl>) => damlTypes.Serializable<K1<i_a2Fj, c_a2Fk, p_a2Fl>>) & {
};


export declare type Par1<p_a2Fo> = {
  unPar1: p_a2Fo;
};

export declare const Par1 :
  (<p_a2Fo>(p_a2Fo: damlTypes.Serializable<p_a2Fo>) => damlTypes.Serializable<Par1<p_a2Fo>>) & {
};


export declare type U1<p_a2Fp> = {
};

export declare const U1 :
  (<p_a2Fp>(p_a2Fp: damlTypes.Serializable<p_a2Fp>) => damlTypes.Serializable<U1<p_a2Fp>>) & {
};

