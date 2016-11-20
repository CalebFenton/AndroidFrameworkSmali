.class public Lsun/security/x509/X500Name;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/X500Name$1;
    }
.end annotation


# static fields
.field private static final DNQUALIFIER_DATA:[I

.field public static final DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final DOMAIN_COMPONENT_DATA:[I

.field public static final DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

.field private static final GENERATIONQUALIFIER_DATA:[I

.field public static final GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final GIVENNAME_DATA:[I

.field public static final GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final INITIALS_DATA:[I

.field public static final INITIALS_OID:Lsun/security/util/ObjectIdentifier;

.field private static final SERIALNUMBER_DATA:[I

.field public static final SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final SURNAME_DATA:[I

.field public static final SURNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final commonName_data:[I

.field public static final commonName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final countryName_data:[I

.field public static final countryName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final internedOIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final ipAddress_data:[I

.field public static final ipAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final localityName_data:[I

.field public static final localityName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final orgName_data:[I

.field public static final orgName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final orgUnitName_data:[I

.field public static final orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final principalConstructor:Ljava/lang/reflect/Constructor;

.field private static final principalField:Ljava/lang/reflect/Field;

.field private static final stateName_data:[I

.field public static final stateName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final streetAddress_data:[I

.field public static final streetAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final title_data:[I

.field public static final title_oid:Lsun/security/util/ObjectIdentifier;

.field private static final userid_data:[I

.field public static final userid_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private volatile allAvaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private canonicalDn:Ljava/lang/String;

.field private dn:Ljava/lang/String;

.field private encoded:[B

.field private names:[Lsun/security/x509/RDN;

.field private volatile rdnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation
.end field

.field private rfc1779Dn:Ljava/lang/String;

.field private rfc2253Dn:Ljava/lang/String;

.field private x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xb

    #@2
    const/4 v7, 0x7

    #@3
    const/4 v6, 0x2

    #@4
    const/4 v5, 0x5

    #@5
    const/4 v4, 0x4

    #@6
    .line 1144
    new-instance v3, Ljava/util/HashMap;

    #@8
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@b
    .line 1143
    sput-object v3, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    #@d
    .line 1151
    const/4 v3, 0x3

    #@e
    filled-new-array {v6, v5, v4, v3}, [I

    #@11
    move-result-object v3

    #@12
    sput-object v3, Lsun/security/x509/X500Name;->commonName_data:[I

    #@14
    .line 1152
    filled-new-array {v6, v5, v4, v4}, [I

    #@17
    move-result-object v3

    #@18
    sput-object v3, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    #@1a
    .line 1153
    filled-new-array {v6, v5, v4, v5}, [I

    #@1d
    move-result-object v3

    #@1e
    sput-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    #@20
    .line 1154
    const/4 v3, 0x6

    #@21
    filled-new-array {v6, v5, v4, v3}, [I

    #@24
    move-result-object v3

    #@25
    sput-object v3, Lsun/security/x509/X500Name;->countryName_data:[I

    #@27
    .line 1155
    filled-new-array {v6, v5, v4, v7}, [I

    #@2a
    move-result-object v3

    #@2b
    sput-object v3, Lsun/security/x509/X500Name;->localityName_data:[I

    #@2d
    .line 1156
    const/16 v3, 0x8

    #@2f
    filled-new-array {v6, v5, v4, v3}, [I

    #@32
    move-result-object v3

    #@33
    sput-object v3, Lsun/security/x509/X500Name;->stateName_data:[I

    #@35
    .line 1157
    const/16 v3, 0x9

    #@37
    filled-new-array {v6, v5, v4, v3}, [I

    #@3a
    move-result-object v3

    #@3b
    sput-object v3, Lsun/security/x509/X500Name;->streetAddress_data:[I

    #@3d
    .line 1158
    const/16 v3, 0xa

    #@3f
    filled-new-array {v6, v5, v4, v3}, [I

    #@42
    move-result-object v3

    #@43
    sput-object v3, Lsun/security/x509/X500Name;->orgName_data:[I

    #@45
    .line 1159
    filled-new-array {v6, v5, v4, v8}, [I

    #@48
    move-result-object v3

    #@49
    sput-object v3, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    #@4b
    .line 1160
    const/16 v3, 0xc

    #@4d
    filled-new-array {v6, v5, v4, v3}, [I

    #@50
    move-result-object v3

    #@51
    sput-object v3, Lsun/security/x509/X500Name;->title_data:[I

    #@53
    .line 1161
    const/16 v3, 0x2a

    #@55
    filled-new-array {v6, v5, v4, v3}, [I

    #@58
    move-result-object v3

    #@59
    sput-object v3, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    #@5b
    .line 1162
    const/16 v3, 0x2b

    #@5d
    filled-new-array {v6, v5, v4, v3}, [I

    #@60
    move-result-object v3

    #@61
    sput-object v3, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    #@63
    .line 1163
    const/16 v3, 0x2c

    #@65
    filled-new-array {v6, v5, v4, v3}, [I

    #@68
    move-result-object v3

    #@69
    sput-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    #@6b
    .line 1164
    const/16 v3, 0x2e

    #@6d
    filled-new-array {v6, v5, v4, v3}, [I

    #@70
    move-result-object v3

    #@71
    sput-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    #@73
    .line 1166
    new-array v3, v8, [I

    #@75
    fill-array-data v3, :array_0

    #@78
    sput-object v3, Lsun/security/x509/X500Name;->ipAddress_data:[I

    #@7a
    .line 1168
    new-array v3, v7, [I

    #@7c
    fill-array-data v3, :array_1

    #@7f
    .line 1167
    sput-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    #@81
    .line 1170
    new-array v3, v7, [I

    #@83
    fill-array-data v3, :array_2

    #@86
    .line 1169
    sput-object v3, Lsun/security/x509/X500Name;->userid_data:[I

    #@88
    .line 1193
    sget-object v3, Lsun/security/x509/X500Name;->commonName_data:[I

    #@8a
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@8d
    move-result-object v3

    #@8e
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@91
    move-result-object v3

    #@92
    sput-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    #@94
    .line 1198
    sget-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    #@96
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@99
    move-result-object v3

    #@9a
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@9d
    move-result-object v3

    #@9e
    sput-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    #@a0
    .line 1201
    sget-object v3, Lsun/security/x509/X500Name;->countryName_data:[I

    #@a2
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@a5
    move-result-object v3

    #@a6
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@a9
    move-result-object v3

    #@aa
    sput-object v3, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    #@ac
    .line 1204
    sget-object v3, Lsun/security/x509/X500Name;->localityName_data:[I

    #@ae
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@b1
    move-result-object v3

    #@b2
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@b5
    move-result-object v3

    #@b6
    sput-object v3, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    #@b8
    .line 1207
    sget-object v3, Lsun/security/x509/X500Name;->orgName_data:[I

    #@ba
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@bd
    move-result-object v3

    #@be
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@c1
    move-result-object v3

    #@c2
    sput-object v3, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    #@c4
    .line 1210
    sget-object v3, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    #@c6
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@c9
    move-result-object v3

    #@ca
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@cd
    move-result-object v3

    #@ce
    sput-object v3, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    #@d0
    .line 1213
    sget-object v3, Lsun/security/x509/X500Name;->stateName_data:[I

    #@d2
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@d5
    move-result-object v3

    #@d6
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@d9
    move-result-object v3

    #@da
    sput-object v3, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    #@dc
    .line 1216
    sget-object v3, Lsun/security/x509/X500Name;->streetAddress_data:[I

    #@de
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@e1
    move-result-object v3

    #@e2
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@e5
    move-result-object v3

    #@e6
    sput-object v3, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    #@e8
    .line 1219
    sget-object v3, Lsun/security/x509/X500Name;->title_data:[I

    #@ea
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@ed
    move-result-object v3

    #@ee
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@f1
    move-result-object v3

    #@f2
    sput-object v3, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    #@f4
    .line 1223
    sget-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    #@f6
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@f9
    move-result-object v3

    #@fa
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@fd
    move-result-object v3

    #@fe
    sput-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@100
    .line 1226
    sget-object v3, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    #@102
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@105
    move-result-object v3

    #@106
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@109
    move-result-object v3

    #@10a
    sput-object v3, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    #@10c
    .line 1229
    sget-object v3, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    #@10e
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@111
    move-result-object v3

    #@112
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@115
    move-result-object v3

    #@116
    sput-object v3, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    #@118
    .line 1232
    sget-object v3, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    #@11a
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@11d
    move-result-object v3

    #@11e
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@121
    move-result-object v3

    #@122
    sput-object v3, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    #@124
    .line 1236
    sget-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    #@126
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@129
    move-result-object v3

    #@12a
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@12d
    move-result-object v3

    #@12e
    .line 1235
    sput-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@130
    .line 1243
    sget-object v3, Lsun/security/x509/X500Name;->ipAddress_data:[I

    #@132
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@135
    move-result-object v3

    #@136
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@139
    move-result-object v3

    #@13a
    sput-object v3, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    #@13c
    .line 1254
    sget-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    #@13e
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@141
    move-result-object v3

    #@142
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@145
    move-result-object v3

    #@146
    .line 1253
    sput-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    #@148
    .line 1257
    sget-object v3, Lsun/security/x509/X500Name;->userid_data:[I

    #@14a
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@14d
    move-result-object v3

    #@14e
    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@151
    move-result-object v3

    #@152
    sput-object v3, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    #@154
    .line 1408
    new-instance v1, Lsun/security/x509/X500Name$1;

    #@156
    invoke-direct {v1}, Lsun/security/x509/X500Name$1;-><init>()V

    #@159
    .line 1420
    .local v1, "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@15c
    move-result-object v2

    #@15d
    check-cast v2, [Ljava/lang/Object;

    #@15f
    .line 1421
    .local v2, "result":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@160
    aget-object v3, v2, v3

    #@162
    check-cast v3, Ljava/lang/reflect/Constructor;

    #@164
    sput-object v3, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    #@166
    .line 1422
    const/4 v3, 0x1

    #@167
    aget-object v3, v2, v3

    #@169
    check-cast v3, Ljava/lang/reflect/Field;

    #@16b
    sput-object v3, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16d
    .line 131
    return-void

    #@16e
    .line 1423
    .end local v2    # "result":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@16f
    .line 1424
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/InternalError;

    #@171
    const-string/jumbo v4, "Could not obtain X500Principal access"

    #@174
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@177
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@17a
    move-result-object v3

    #@17b
    check-cast v3, Ljava/lang/InternalError;

    #@17d
    throw v3

    #@17e
    .line 1166
    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x4
        0x1
        0x2a
        0x2
        0xb
        0x2
        0x1
    .end array-data

    #@198
    .line 1168
    :array_1
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    #@1aa
    .line 1170
    :array_2
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    #@7
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dname"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 179
    if-nez p1, :cond_0

    #@5
    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "Name must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 182
    :cond_0
    const-string/jumbo v0, "RFC2253"

    #@11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 183
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseRFC2253DN(Ljava/lang/String;)V

    #@1a
    .line 178
    :goto_0
    return-void

    #@1b
    .line 184
    :cond_1
    const-string/jumbo v0, "DEFAULT"

    #@1e
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@27
    move-result-object v0

    #@28
    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    #@2b
    goto :goto_0

    #@2c
    .line 187
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Unsupported format "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 207
    const/4 v0, 0x4

    #@8
    new-array v0, v0, [Lsun/security/x509/RDN;

    #@a
    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@c
    .line 212
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@e
    new-instance v1, Lsun/security/x509/RDN;

    #@10
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@13
    aput-object v1, v0, v2

    #@15
    .line 213
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@17
    aget-object v0, v0, v2

    #@19
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@1b
    new-instance v1, Lsun/security/x509/AVA;

    #@1d
    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    #@1f
    .line 214
    new-instance v3, Lsun/security/util/DerValue;

    #@21
    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@24
    .line 213
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@27
    aput-object v1, v0, v4

    #@29
    .line 215
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@2b
    new-instance v1, Lsun/security/x509/RDN;

    #@2d
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@30
    aput-object v1, v0, v6

    #@32
    .line 216
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@34
    aget-object v0, v0, v6

    #@36
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@38
    new-instance v1, Lsun/security/x509/AVA;

    #@3a
    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    #@3c
    .line 217
    new-instance v3, Lsun/security/util/DerValue;

    #@3e
    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@41
    .line 216
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@44
    aput-object v1, v0, v4

    #@46
    .line 218
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@48
    new-instance v1, Lsun/security/x509/RDN;

    #@4a
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@4d
    aput-object v1, v0, v5

    #@4f
    .line 219
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@51
    aget-object v0, v0, v5

    #@53
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@55
    new-instance v1, Lsun/security/x509/AVA;

    #@57
    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    #@59
    .line 220
    new-instance v3, Lsun/security/util/DerValue;

    #@5b
    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@5e
    .line 219
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@61
    aput-object v1, v0, v4

    #@63
    .line 221
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@65
    new-instance v1, Lsun/security/x509/RDN;

    #@67
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@6a
    aput-object v1, v0, v4

    #@6c
    .line 222
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@6e
    aget-object v0, v0, v4

    #@70
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@72
    new-instance v1, Lsun/security/x509/AVA;

    #@74
    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    #@76
    .line 223
    new-instance v3, Lsun/security/util/DerValue;

    #@78
    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@7b
    .line 222
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@7e
    aput-object v1, v0, v4

    #@80
    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "localityName"    # Ljava/lang/String;
    .param p5, "stateName"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 245
    const/4 v0, 0x6

    #@9
    new-array v0, v0, [Lsun/security/x509/RDN;

    #@b
    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@d
    .line 250
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@f
    new-instance v1, Lsun/security/x509/RDN;

    #@11
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@14
    const/4 v2, 0x5

    #@15
    aput-object v1, v0, v2

    #@17
    .line 251
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@19
    const/4 v1, 0x5

    #@1a
    aget-object v0, v0, v1

    #@1c
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@1e
    new-instance v1, Lsun/security/x509/AVA;

    #@20
    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    #@22
    .line 252
    new-instance v3, Lsun/security/util/DerValue;

    #@24
    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@27
    .line 251
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@2a
    aput-object v1, v0, v4

    #@2c
    .line 253
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@2e
    new-instance v1, Lsun/security/x509/RDN;

    #@30
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@33
    aput-object v1, v0, v8

    #@35
    .line 254
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@37
    aget-object v0, v0, v8

    #@39
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@3b
    new-instance v1, Lsun/security/x509/AVA;

    #@3d
    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    #@3f
    .line 255
    new-instance v3, Lsun/security/util/DerValue;

    #@41
    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@44
    .line 254
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@47
    aput-object v1, v0, v4

    #@49
    .line 256
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@4b
    new-instance v1, Lsun/security/x509/RDN;

    #@4d
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@50
    aput-object v1, v0, v7

    #@52
    .line 257
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@54
    aget-object v0, v0, v7

    #@56
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@58
    new-instance v1, Lsun/security/x509/AVA;

    #@5a
    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    #@5c
    .line 258
    new-instance v3, Lsun/security/util/DerValue;

    #@5e
    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@61
    .line 257
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@64
    aput-object v1, v0, v4

    #@66
    .line 259
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@68
    new-instance v1, Lsun/security/x509/RDN;

    #@6a
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@6d
    aput-object v1, v0, v6

    #@6f
    .line 260
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@71
    aget-object v0, v0, v6

    #@73
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@75
    new-instance v1, Lsun/security/x509/AVA;

    #@77
    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    #@79
    .line 261
    new-instance v3, Lsun/security/util/DerValue;

    #@7b
    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@7e
    .line 260
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@81
    aput-object v1, v0, v4

    #@83
    .line 262
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@85
    new-instance v1, Lsun/security/x509/RDN;

    #@87
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@8a
    aput-object v1, v0, v5

    #@8c
    .line 263
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@8e
    aget-object v0, v0, v5

    #@90
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@92
    new-instance v1, Lsun/security/x509/AVA;

    #@94
    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    #@96
    .line 264
    new-instance v3, Lsun/security/util/DerValue;

    #@98
    invoke-direct {v3, p5}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@9b
    .line 263
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@9e
    aput-object v1, v0, v4

    #@a0
    .line 265
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@a2
    new-instance v1, Lsun/security/x509/RDN;

    #@a4
    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    #@a7
    aput-object v1, v0, v4

    #@a9
    .line 266
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@ab
    aget-object v0, v0, v4

    #@ad
    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@af
    new-instance v1, Lsun/security/x509/AVA;

    #@b1
    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    #@b3
    .line 267
    new-instance v3, Lsun/security/util/DerValue;

    #@b5
    invoke-direct {v3, p6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@b8
    .line 266
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@bb
    aput-object v1, v0, v4

    #@bd
    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    #@6
    .line 165
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 0
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 308
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    #@6
    .line 307
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@7
    .line 295
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 317
    new-instance v0, Lsun/security/util/DerInputStream;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@8
    .line 318
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    #@b
    .line 316
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/RDN;)V
    .locals 3
    .param p1, "rdnArray"    # [Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 277
    if-nez p1, :cond_1

    #@5
    .line 278
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Lsun/security/x509/RDN;

    #@8
    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@a
    .line 276
    :cond_0
    return-void

    #@b
    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, [Lsun/security/x509/RDN;

    #@11
    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@13
    .line 281
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@16
    array-length v1, v1

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 282
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1b
    aget-object v1, v1, v0

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 283
    new-instance v1, Ljava/io/IOException;

    #@21
    const-string/jumbo v2, "Cannot create an X500Name"

    #@24
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0
.end method

.method public static asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;
    .locals 4
    .param p0, "p"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 1455
    :try_start_0
    sget-object v2, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;

    #@2
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lsun/security/x509/X500Name;

    #@8
    .line 1456
    .local v1, "name":Lsun/security/x509/X500Name;
    iput-object p0, v1, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1457
    return-object v1

    #@b
    .line 1458
    .end local v1    # "name":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v0

    #@c
    .line 1459
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v3, "Unexpected exception"

    #@11
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v2
.end method

.method private checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 955
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_2

    #@7
    .line 956
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 957
    .local v0, "c":C
    const/16 v2, 0x20

    #@d
    if-eq v0, v2, :cond_1

    #@f
    .line 958
    const/16 v2, 0x9

    #@11
    if-eq v0, v2, :cond_0

    #@13
    const/16 v2, 0xa

    #@15
    if-ne v0, v2, :cond_2

    #@17
    .line 959
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v3, "DN cannot start with newline nor tab"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 955
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 954
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method static countQuotes(Ljava/lang/String;II)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .line 1023
    const/4 v0, 0x0

    #@1
    .line 1025
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .line 1026
    .local v1, "escape":I
    move v2, p1

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    #@5
    .line 1027
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v3

    #@9
    const/16 v4, 0x22

    #@b
    if-ne v3, v4, :cond_0

    #@d
    rem-int/lit8 v3, v1, 0x2

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1028
    add-int/lit8 v0, v0, 0x1

    #@13
    .line 1030
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    const/16 v4, 0x5c

    #@19
    if-ne v3, v4, :cond_1

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    .line 1026
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1030
    :cond_1
    const/4 v1, 0x0

    #@21
    goto :goto_1

    #@22
    .line 1033
    :cond_2
    return v0
.end method

.method private static escaped(IILjava/lang/String;)Z
    .locals 5
    .param p0, "rdnEnd"    # I
    .param p1, "searchOffset"    # I
    .param p2, "dnString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v4, 0x5c

    #@3
    const/4 v1, 0x1

    #@4
    .line 1039
    if-ne p0, v1, :cond_0

    #@6
    add-int/lit8 v3, p0, -0x1

    #@8
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v3

    #@c
    if-ne v3, v4, :cond_0

    #@e
    .line 1044
    return v1

    #@f
    .line 1046
    :cond_0
    if-le p0, v1, :cond_1

    #@11
    add-int/lit8 v3, p0, -0x1

    #@13
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    if-ne v3, v4, :cond_1

    #@19
    .line 1047
    add-int/lit8 v3, p0, -0x2

    #@1b
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    if-eq v3, v4, :cond_1

    #@21
    .line 1052
    return v1

    #@22
    .line 1054
    :cond_1
    if-le p0, v1, :cond_5

    #@24
    add-int/lit8 v3, p0, -0x1

    #@26
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v3

    #@2a
    if-ne v3, v4, :cond_5

    #@2c
    .line 1055
    add-int/lit8 v3, p0, -0x2

    #@2e
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v3

    #@32
    if-ne v3, v4, :cond_5

    #@34
    .line 1060
    const/4 v0, 0x0

    #@35
    .line 1061
    .local v0, "count":I
    add-int/lit8 p0, p0, -0x1

    #@37
    .line 1062
    :goto_0
    if-lt p0, p1, :cond_3

    #@39
    .line 1063
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v3

    #@3d
    if-ne v3, v4, :cond_2

    #@3f
    .line 1064
    add-int/lit8 v0, v0, 0x1

    #@41
    .line 1066
    :cond_2
    add-int/lit8 p0, p0, -0x1

    #@43
    goto :goto_0

    #@44
    .line 1070
    :cond_3
    rem-int/lit8 v3, v0, 0x2

    #@46
    if-eqz v3, :cond_4

    #@48
    :goto_1
    return v1

    #@49
    :cond_4
    move v1, v2

    #@4a
    goto :goto_1

    #@4b
    .line 1073
    .end local v0    # "count":I
    :cond_5
    return v2
.end method

.method private findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 749
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 750
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 751
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@12
    move-result-object v1

    #@13
    .line 752
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_0

    #@15
    .line 753
    return-object v1

    #@16
    .line 750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 757
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_1
    return-object v3
.end method

.method private generateDN()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1085
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@3
    array-length v2, v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 1086
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@9
    aget-object v2, v2, v4

    #@b
    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    #@11
    .line 1087
    return-void

    #@12
    .line 1090
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    const/16 v2, 0x30

    #@16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@19
    .line 1091
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 1092
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1f
    array-length v2, v2

    #@20
    add-int/lit8 v0, v2, -0x1

    #@22
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@24
    .line 1093
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@26
    array-length v2, v2

    #@27
    add-int/lit8 v2, v2, -0x1

    #@29
    if-eq v0, v2, :cond_1

    #@2b
    .line 1094
    const-string/jumbo v2, ", "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1096
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@33
    aget-object v2, v2, v0

    #@35
    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 1092
    add-int/lit8 v0, v0, -0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1099
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    #@45
    .line 1084
    return-void
.end method

.method private generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 1112
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@3
    array-length v2, v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 1113
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@9
    aget-object v2, v2, v4

    #@b
    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 1116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    const/16 v2, 0x30

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 1117
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 1118
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1d
    array-length v2, v2

    #@1e
    add-int/lit8 v0, v2, -0x1

    #@20
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@22
    .line 1119
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@24
    array-length v2, v2

    #@25
    add-int/lit8 v2, v2, -0x1

    #@27
    if-eq v0, v2, :cond_1

    #@29
    .line 1120
    const-string/jumbo v2, ", "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1122
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@31
    aget-object v2, v2, v0

    #@33
    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 1118
    add-int/lit8 v0, v0, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1125
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    return-object v2
.end method

.method private generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 681
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@2
    array-length v2, v2

    #@3
    if-nez v2, :cond_0

    #@5
    .line 682
    const-string/jumbo v2, ""

    #@8
    return-object v2

    #@9
    .line 694
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v2, 0x30

    #@d
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 695
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@12
    array-length v2, v2

    #@13
    add-int/lit8 v1, v2, -0x1

    #@15
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@17
    .line 696
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@19
    array-length v2, v2

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    if-ge v1, v2, :cond_1

    #@1e
    .line 697
    const/16 v2, 0x2c

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 699
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@25
    aget-object v2, v2, v1

    #@27
    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 695
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_0

    #@31
    .line 701
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method

.method private getString(Lsun/security/util/DerValue;)Ljava/lang/String;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    if-nez p1, :cond_0

    #@3
    .line 429
    return-object v1

    #@4
    .line 430
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 432
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    #@a
    .line 433
    new-instance v1, Ljava/io/IOException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "not a DER string encoding, "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 434
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    #@1a
    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 436
    :cond_1
    return-object v0
.end method

.method static intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 1135
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/util/ObjectIdentifier;

    #@8
    .line 1136
    .local v0, "interned":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_0

    #@a
    .line 1137
    return-object v0

    #@b
    .line 1139
    :cond_0
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    #@d
    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1140
    return-object p0
.end method

.method private isWithinSubtree(Lsun/security/x509/X500Name;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/X500Name;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1311
    if-ne p0, p1, :cond_0

    #@4
    .line 1312
    return v4

    #@5
    .line 1314
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1315
    return v3

    #@8
    .line 1317
    :cond_1
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@a
    array-length v1, v1

    #@b
    if-nez v1, :cond_2

    #@d
    .line 1318
    return v4

    #@e
    .line 1320
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@10
    array-length v1, v1

    #@11
    if-nez v1, :cond_3

    #@13
    .line 1321
    return v3

    #@14
    .line 1323
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@16
    array-length v1, v1

    #@17
    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@19
    array-length v2, v2

    #@1a
    if-ge v1, v2, :cond_4

    #@1c
    .line 1324
    return v3

    #@1d
    .line 1326
    :cond_4
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@20
    array-length v1, v1

    #@21
    if-ge v0, v1, :cond_6

    #@23
    .line 1327
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@25
    aget-object v1, v1, v0

    #@27
    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@29
    aget-object v2, v2, v0

    #@2b
    invoke-virtual {v1, v2}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_5

    #@31
    .line 1328
    return v3

    #@32
    .line 1326
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1331
    :cond_6
    return v4
.end method

.method private parseDER(Lsun/security/util/DerInputStream;)V
    .locals 8
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    .line 784
    const/4 v4, 0x0

    #@2
    .line 785
    .local v4, "nameseq":[Lsun/security/util/DerValue;
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    .line 788
    .local v0, "derBytes":[B
    const/4 v5, 0x5

    #@7
    :try_start_0
    invoke-virtual {p1, v5}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v4

    #@b
    .line 800
    .end local v4    # "nameseq":[Lsun/security/util/DerValue;
    :goto_0
    if-nez v4, :cond_2

    #@d
    .line 801
    const/4 v5, 0x0

    #@e
    new-array v5, v5, [Lsun/security/x509/RDN;

    #@10
    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@12
    .line 778
    :cond_0
    return-void

    #@13
    .line 789
    .restart local v4    # "nameseq":[Lsun/security/util/DerValue;
    :catch_0
    move-exception v3

    #@14
    .line 790
    .local v3, "ioe":Ljava/io/IOException;
    if-nez v0, :cond_1

    #@16
    .line 791
    const/4 v4, 0x0

    #@17
    goto :goto_0

    #@18
    .line 793
    :cond_1
    new-instance v1, Lsun/security/util/DerValue;

    #@1a
    const/16 v5, 0x30

    #@1c
    invoke-direct {v1, v5, v0}, Lsun/security/util/DerValue;-><init>(B[B)V

    #@1f
    .line 795
    .local v1, "derVal":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@22
    move-result-object v0

    #@23
    .line 796
    new-instance v5, Lsun/security/util/DerInputStream;

    #@25
    invoke-direct {v5, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@28
    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@2b
    move-result-object v4

    #@2c
    .local v4, "nameseq":[Lsun/security/util/DerValue;
    goto :goto_0

    #@2d
    .line 803
    .end local v1    # "derVal":Lsun/security/util/DerValue;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "nameseq":[Lsun/security/util/DerValue;
    :cond_2
    array-length v5, v4

    #@2e
    new-array v5, v5, [Lsun/security/x509/RDN;

    #@30
    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@32
    .line 804
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_1
    array-length v5, v4

    #@34
    if-ge v2, v5, :cond_0

    #@36
    .line 805
    iget-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@38
    new-instance v6, Lsun/security/x509/RDN;

    #@3a
    aget-object v7, v4, v2

    #@3c
    invoke-direct {v6, v7}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    #@3f
    aput-object v6, v5, v2

    #@41
    .line 804
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1
.end method

.method private parseDN(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 876
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v10

    #@6
    if-nez v10, :cond_1

    #@8
    .line 877
    :cond_0
    const/4 v10, 0x0

    #@9
    new-array v10, v10, [Lsun/security/x509/RDN;

    #@b
    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@d
    .line 878
    return-void

    #@e
    .line 881
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V

    #@11
    .line 883
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 884
    .local v2, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v0, 0x0

    #@17
    .line 887
    .local v0, "dnOffset":I
    const/4 v5, 0x0

    #@18
    .line 889
    .local v5, "quoteCount":I
    move-object v1, p1

    #@19
    .line 891
    .local v1, "dnString":Ljava/lang/String;
    const/4 v9, 0x0

    #@1a
    .line 892
    .local v9, "searchOffset":I
    const/16 v10, 0x2c

    #@1c
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v3

    #@20
    .line 893
    .local v3, "nextComma":I
    const/16 v10, 0x3b

    #@22
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    #@25
    move-result v4

    #@26
    .line 894
    .local v4, "nextSemiColon":I
    :goto_0
    if-gez v3, :cond_2

    #@28
    if-ltz v4, :cond_7

    #@2a
    .line 896
    :cond_2
    if-gez v4, :cond_4

    #@2c
    .line 897
    move v7, v3

    #@2d
    .line 903
    .local v7, "rdnEnd":I
    :goto_1
    invoke-static {p1, v9, v7}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    #@30
    move-result v10

    #@31
    add-int/2addr v5, v10

    #@32
    .line 912
    if-ltz v7, :cond_3

    #@34
    const/4 v10, 0x1

    #@35
    if-eq v5, v10, :cond_3

    #@37
    .line 913
    invoke-static {v7, v9, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    #@3a
    move-result v10

    #@3b
    if-eqz v10, :cond_6

    #@3d
    .line 931
    :cond_3
    :goto_2
    add-int/lit8 v9, v7, 0x1

    #@3f
    .line 932
    const/16 v10, 0x2c

    #@41
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    #@44
    move-result v3

    #@45
    .line 933
    const/16 v10, 0x3b

    #@47
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    #@4a
    move-result v4

    #@4b
    goto :goto_0

    #@4c
    .line 898
    .end local v7    # "rdnEnd":I
    :cond_4
    if-gez v3, :cond_5

    #@4e
    .line 899
    move v7, v4

    #@4f
    .restart local v7    # "rdnEnd":I
    goto :goto_1

    #@50
    .line 901
    .end local v7    # "rdnEnd":I
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@53
    move-result v7

    #@54
    .restart local v7    # "rdnEnd":I
    goto :goto_1

    #@55
    .line 918
    :cond_6
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    .line 921
    .local v8, "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    #@5b
    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    #@5e
    .line 922
    .local v6, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@61
    .line 925
    add-int/lit8 v0, v7, 0x1

    #@63
    .line 928
    const/4 v5, 0x0

    #@64
    goto :goto_2

    #@65
    .line 937
    .end local v6    # "rdn":Lsun/security/x509/RDN;
    .end local v7    # "rdnEnd":I
    .end local v8    # "rdnString":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    .line 938
    .restart local v8    # "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    #@6b
    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    #@6e
    .line 939
    .restart local v6    # "rdn":Lsun/security/x509/RDN;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 945
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@74
    .line 946
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@77
    move-result v10

    #@78
    new-array v10, v10, [Lsun/security/x509/RDN;

    #@7a
    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7d
    move-result-object v10

    #@7e
    check-cast v10, [Lsun/security/x509/RDN;

    #@80
    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@82
    .line 875
    return-void
.end method

.method private parseRFC2253DN(Ljava/lang/String;)V
    .locals 9
    .param p1, "dnString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x2c

    #@2
    const/4 v7, 0x0

    #@3
    .line 967
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_0

    #@9
    .line 968
    new-array v6, v7, [Lsun/security/x509/RDN;

    #@b
    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@d
    .line 969
    return-void

    #@e
    .line 972
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 973
    .local v1, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v0, 0x0

    #@14
    .line 976
    .local v0, "dnOffset":I
    const/4 v5, 0x0

    #@15
    .line 977
    .local v5, "searchOffset":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v3

    #@19
    .line 978
    .local v3, "rdnEnd":I
    :goto_0
    if-ltz v3, :cond_3

    #@1b
    .line 986
    if-lez v3, :cond_1

    #@1d
    invoke-static {v3, v5, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_2

    #@23
    .line 1001
    :cond_1
    :goto_1
    add-int/lit8 v5, v3, 0x1

    #@25
    .line 1002
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    #@28
    move-result v3

    #@29
    goto :goto_0

    #@2a
    .line 991
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 994
    .local v4, "rdnString":Ljava/lang/String;
    new-instance v2, Lsun/security/x509/RDN;

    #@30
    const-string/jumbo v6, "RFC2253"

    #@33
    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 995
    .local v2, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 998
    add-int/lit8 v0, v3, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1006
    .end local v2    # "rdn":Lsun/security/x509/RDN;
    .end local v4    # "rdnString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 1007
    .restart local v4    # "rdnString":Ljava/lang/String;
    new-instance v2, Lsun/security/x509/RDN;

    #@42
    const-string/jumbo v6, "RFC2253"

    #@45
    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 1008
    .restart local v2    # "rdn":Lsun/security/x509/RDN;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    .line 1014
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@4e
    .line 1015
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@51
    move-result v6

    #@52
    new-array v6, v6, [Lsun/security/x509/RDN;

    #@54
    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    check-cast v6, [Lsun/security/x509/RDN;

    #@5a
    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@5c
    .line 966
    return-void
.end method


# virtual methods
.method public allAvas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 345
    iget-object v1, p0, Lsun/security/x509/X500Name;->allAvaList:Ljava/util/List;

    #@2
    .line 346
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v1, :cond_0

    #@4
    .line 347
    new-instance v1, Ljava/util/ArrayList;

    #@6
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 348
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@c
    array-length v2, v2

    #@d
    if-ge v0, v2, :cond_0

    #@f
    .line 349
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-virtual {v2}, Lsun/security/x509/RDN;->avas()Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 348
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 352
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    #@0
    .prologue
    .line 1436
    iget-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1438
    const/4 v2, 0x1

    #@5
    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object p0, v0, v2

    #@a
    .line 1440
    .local v0, "args":[Ljava/lang/Object;
    sget-object v2, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    #@12
    .line 1439
    iput-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1445
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    #@16
    return-object v2

    #@17
    .line 1441
    :catch_0
    move-exception v1

    #@18
    .line 1442
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v3, "Unexpected exception"

    #@1d
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v2
.end method

.method public avaSize()I
    .locals 1

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;
    .locals 11
    .param p1, "other"    # Lsun/security/x509/X500Name;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1354
    if-nez p1, :cond_0

    #@3
    .line 1355
    return-object v10

    #@4
    .line 1357
    :cond_0
    iget-object v8, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@6
    array-length v6, v8

    #@7
    .line 1358
    .local v6, "otherLen":I
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@9
    array-length v7, v8

    #@a
    .line 1359
    .local v7, "thisLen":I
    if-eqz v7, :cond_1

    #@c
    if-nez v6, :cond_2

    #@e
    .line 1360
    :cond_1
    return-object v10

    #@f
    .line 1362
    :cond_2
    if-ge v7, v6, :cond_3

    #@11
    move v5, v7

    #@12
    .line 1366
    .local v5, "minLen":I
    :goto_0
    const/4 v2, 0x0

    #@13
    .line 1367
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_5

    #@15
    .line 1368
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@17
    aget-object v8, v8, v2

    #@19
    iget-object v9, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1b
    aget-object v9, v9, v2

    #@1d
    invoke-virtual {v8, v9}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v8

    #@21
    if-nez v8, :cond_4

    #@23
    .line 1369
    if-nez v2, :cond_5

    #@25
    .line 1370
    return-object v10

    #@26
    .line 1362
    .end local v2    # "i":I
    .end local v5    # "minLen":I
    :cond_3
    move v5, v6

    #@27
    .restart local v5    # "minLen":I
    goto :goto_0

    #@28
    .line 1367
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1378
    :cond_5
    new-array v0, v2, [Lsun/security/x509/RDN;

    #@2d
    .line 1379
    .local v0, "ancestor":[Lsun/security/x509/RDN;
    const/4 v4, 0x0

    #@2e
    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_6

    #@30
    .line 1380
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@32
    aget-object v8, v8, v4

    #@34
    aput-object v8, v0, v4

    #@36
    .line 1379
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_2

    #@39
    .line 1383
    :cond_6
    const/4 v1, 0x0

    #@3a
    .line 1385
    .local v1, "commonAncestor":Lsun/security/x509/X500Name;
    :try_start_0
    new-instance v1, Lsun/security/x509/X500Name;

    #@3c
    .end local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 1389
    .local v1, "commonAncestor":Lsun/security/x509/X500Name;
    return-object v1

    #@40
    .line 1386
    .end local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v3

    #@41
    .line 1387
    .local v3, "ioe":Ljava/io/IOException;
    return-object v10
.end method

.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1280
    if-nez p1, :cond_0

    #@2
    .line 1281
    const/4 v0, -0x1

    #@3
    .line 1300
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@4
    .line 1282
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x4

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 1283
    const/4 v0, -0x1

    #@c
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@d
    .end local v0    # "constraintType":I
    :cond_1
    move-object v1, p1

    #@e
    .line 1285
    check-cast v1, Lsun/security/x509/X500Name;

    #@10
    .line 1286
    .local v1, "inputX500":Lsun/security/x509/X500Name;
    invoke-virtual {v1, p0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 1287
    const/4 v0, 0x0

    #@17
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@18
    .line 1288
    .end local v0    # "constraintType":I
    :cond_2
    iget-object v2, v1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1a
    array-length v2, v2

    #@1b
    if-nez v2, :cond_3

    #@1d
    .line 1289
    const/4 v0, 0x2

    #@1e
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@1f
    .line 1290
    .end local v0    # "constraintType":I
    :cond_3
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@21
    array-length v2, v2

    #@22
    if-nez v2, :cond_4

    #@24
    .line 1291
    const/4 v0, 0x1

    #@25
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@26
    .line 1292
    .end local v0    # "constraintType":I
    :cond_4
    invoke-direct {v1, p0}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_5

    #@2c
    .line 1293
    const/4 v0, 0x1

    #@2d
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@2e
    .line 1294
    .end local v0    # "constraintType":I
    :cond_5
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_6

    #@34
    .line 1295
    const/4 v0, 0x2

    #@35
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@36
    .line 1297
    .end local v0    # "constraintType":I
    :cond_6
    const/4 v0, 0x3

    #@37
    .restart local v0    # "constraintType":I
    goto :goto_0
.end method

.method public emit(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    #@3
    .line 817
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 827
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 828
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 829
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-virtual {v2, v1}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    #@12
    .line 828
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 831
    :cond_0
    const/16 v2, 0x30

    #@17
    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@1a
    .line 826
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 394
    if-ne p0, p1, :cond_0

    #@3
    .line 395
    const/4 v7, 0x1

    #@4
    return v7

    #@5
    .line 397
    :cond_0
    instance-of v7, p1, Lsun/security/x509/X500Name;

    #@7
    if-nez v7, :cond_1

    #@9
    .line 398
    return v9

    #@a
    :cond_1
    move-object v2, p1

    #@b
    .line 400
    check-cast v2, Lsun/security/x509/X500Name;

    #@d
    .line 402
    .local v2, "other":Lsun/security/x509/X500Name;
    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@f
    if-eqz v7, :cond_2

    #@11
    iget-object v7, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@13
    if-eqz v7, :cond_2

    #@15
    .line 403
    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@17
    iget-object v8, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v7

    #@1d
    return v7

    #@1e
    .line 406
    :cond_2
    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@20
    array-length v1, v7

    #@21
    .line 407
    .local v1, "n":I
    iget-object v7, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@23
    array-length v7, v7

    #@24
    if-eq v1, v7, :cond_3

    #@26
    .line 408
    return v9

    #@27
    .line 410
    :cond_3
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@2a
    .line 411
    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@2c
    aget-object v4, v7, v0

    #@2e
    .line 412
    .local v4, "r1":Lsun/security/x509/RDN;
    iget-object v7, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@30
    aget-object v5, v7, v0

    #@32
    .line 413
    .local v5, "r2":Lsun/security/x509/RDN;
    iget-object v7, v4, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@34
    array-length v7, v7

    #@35
    iget-object v8, v5, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@37
    array-length v8, v8

    #@38
    if-eq v7, v8, :cond_4

    #@3a
    .line 414
    return v9

    #@3b
    .line 410
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 418
    .end local v4    # "r1":Lsun/security/x509/RDN;
    .end local v5    # "r2":Lsun/security/x509/RDN;
    :cond_5
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 419
    .local v6, "thisCanonical":Ljava/lang/String;
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 420
    .local v3, "otherCanonical":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v7

    #@4a
    return v7
.end method

.method public findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 765
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 766
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@7
    array-length v2, v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 767
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@13
    move-result-object v1

    #@14
    .line 768
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_0

    #@16
    .line 769
    return-object v1

    #@17
    .line 766
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 773
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_1
    return-object v3
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    sget-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 494
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    sget-object v1, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 455
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getDNQualifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    sget-object v1, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 543
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    sget-object v1, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 531
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 840
    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    #@2
    if-nez v3, :cond_1

    #@4
    .line 841
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 842
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@b
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@e
    .line 843
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@11
    array-length v3, v3

    #@12
    if-ge v0, v3, :cond_0

    #@14
    .line 844
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@16
    aget-object v3, v3, v0

    #@18
    invoke-virtual {v3, v2}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    #@1b
    .line 843
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 846
    :cond_0
    const/16 v3, 0x30

    #@20
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@23
    .line 847
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@26
    move-result-object v3

    #@27
    iput-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    #@29
    .line 849
    .end local v0    # "i":I
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    #@2b
    return-object v3
.end method

.method public getGeneration()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    sget-object v1, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 591
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    sget-object v1, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 567
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getIP()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 601
    sget-object v1, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 603
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getInitials()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 577
    sget-object v1, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 579
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getLocality()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    sget-object v1, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 507
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 742
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 466
    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 468
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getOrganizationalUnit()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    sget-object v1, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 481
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getRFC1779Name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 625
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 638
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 639
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 641
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    #@13
    .line 642
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    #@15
    return-object v0

    #@16
    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getRFC2253CanonicalName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 706
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 707
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@6
    return-object v2

    #@7
    .line 713
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@9
    array-length v2, v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 714
    const-string/jumbo v2, ""

    #@f
    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@11
    .line 715
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@13
    return-object v2

    #@14
    .line 727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    const/16 v2, 0x30

    #@18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b
    .line 728
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@1d
    array-length v2, v2

    #@1e
    add-int/lit8 v1, v2, -0x1

    #@20
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@22
    .line 729
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@24
    array-length v2, v2

    #@25
    add-int/lit8 v2, v2, -0x1

    #@27
    if-ge v1, v2, :cond_2

    #@29
    .line 730
    const/16 v2, 0x2c

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 732
    :cond_2
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@30
    aget-object v2, v2, v1

    #@32
    const/4 v3, 0x1

    #@33
    invoke-virtual {v2, v3}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 728
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 734
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@43
    .line 735
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    #@45
    return-object v2
.end method

.method public getRFC2253Name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 654
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 665
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 666
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 667
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 669
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    #@13
    .line 670
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    #@15
    return-object v0

    #@16
    .line 673
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 517
    sget-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 519
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getSurname()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 553
    sget-object v1, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@5
    move-result-object v0

    #@6
    .line 555
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 443
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 385
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isEmpty()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 368
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@4
    array-length v1, v2

    #@5
    .line 369
    .local v1, "n":I
    if-nez v1, :cond_0

    #@7
    .line 370
    return v4

    #@8
    .line 372
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@b
    .line 373
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@d
    aget-object v2, v2, v0

    #@f
    iget-object v2, v2, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    #@11
    array-length v2, v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 374
    return v3

    #@15
    .line 372
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 377
    :cond_2
    return v4
.end method

.method public rdns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    #@2
    .line 326
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    if-nez v0, :cond_0

    #@4
    .line 327
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 328
    iput-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    #@10
    .line 330
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public subtreeDepth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1343
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 614
    invoke-direct {p0}, Lsun/security/x509/X500Name;->generateDN()V

    #@7
    .line 616
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    #@9
    return-object v0
.end method
