.class public Lcom/android/org/conscrypt/ct/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final blacklist CERTIFICATE_LENGTH_BYTES:I = 0x3

.field public static final blacklist EXTENSIONS_LENGTH_BYTES:I = 0x2

.field public static final blacklist HASH_ALGORITHM_LENGTH:I = 0x1

.field public static final blacklist ISSUER_KEY_HASH_LENGTH:I = 0x20

.field public static final blacklist LOGID_LENGTH:I = 0x20

.field public static final blacklist LOG_ENTRY_TYPE_LENGTH:I = 0x2

.field public static final blacklist OCSP_SCT_LIST_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.4.5"

.field public static final blacklist SCT_LIST_LENGTH_BYTES:I = 0x2

.field public static final blacklist SERIALIZED_SCT_LENGTH_BYTES:I = 0x2

.field public static final blacklist SIGNATURE_ALGORITHM_LENGTH:I = 0x1

.field public static final blacklist SIGNATURE_LENGTH_BYTES:I = 0x2

.field public static final blacklist SIGNATURE_TYPE_LENGTH:I = 0x1

.field public static final blacklist TIMESTAMP_LENGTH:I = 0x8

.field public static final blacklist VERSION_LENGTH:I = 0x1

.field public static final blacklist X509_SCT_LIST_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.4.2"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
