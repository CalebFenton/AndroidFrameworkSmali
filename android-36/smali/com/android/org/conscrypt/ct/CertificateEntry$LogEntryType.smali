.class public final enum Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
.super Ljava/lang/Enum;
.source "CertificateEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/CertificateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum blacklist PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum blacklist X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 2

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    filled-new-array {v0, v1}, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const-string v1, "X509_ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 51
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const-string v1, "PRECERT_ENTRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 49
    invoke-static {}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$values()[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->value:I

    .line 56
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    const-class v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method


# virtual methods
.method blacklist value()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->value:I

    return v0
.end method
