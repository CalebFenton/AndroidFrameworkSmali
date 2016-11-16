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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 44
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@4
    const-string/jumbo v1, "X509_ENTRY"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@c
    .line 45
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@e
    const-string/jumbo v1, "PRECERT_ENTRY"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@16
    .line 43
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@19
    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const-class v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .locals 1

    #@0
    .prologue
    .line 43
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@2
    return-object v0
.end method
