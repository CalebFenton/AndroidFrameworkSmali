.class public final enum Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
.super Ljava/lang/Enum;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/VerifiedSCT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 24
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@6
    const-string/jumbo v1, "VALID"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@e
    .line 25
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@10
    const-string/jumbo v1, "INVALID_SIGNATURE"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@18
    .line 26
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@1a
    const-string/jumbo v1, "UNKNOWN_LOG"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@22
    .line 27
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@24
    const-string/jumbo v1, "INVALID_SCT"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@2c
    .line 23
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@2f
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 23
    const-class v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .locals 1

    #@0
    .prologue
    .line 23
    sget-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@2
    return-object v0
.end method
