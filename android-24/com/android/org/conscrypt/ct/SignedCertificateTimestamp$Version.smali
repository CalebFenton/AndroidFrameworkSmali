.class public final enum Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
.super Ljava/lang/Enum;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

.field public static final enum V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 29
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@3
    const-string/jumbo v1, "V1"

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;-><init>(Ljava/lang/String;I)V

    #@9
    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@b
    .line 28
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@e
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@10
    aput-object v1, v0, v2

    #@12
    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@2
    return-object v0
.end method
