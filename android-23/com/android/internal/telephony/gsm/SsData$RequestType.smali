.class public final enum Lcom/android/internal/telephony/gsm/SsData$RequestType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@7
    const-string/jumbo v1, "SS_ACTIVATION"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@f
    .line 85
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@11
    const-string/jumbo v1, "SS_DEACTIVATION"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@19
    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@1b
    const-string/jumbo v1, "SS_INTERROGATION"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@23
    .line 87
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@25
    const-string/jumbo v1, "SS_REGISTRATION"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@2d
    .line 88
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@2f
    const-string/jumbo v1, "SS_ERASURE"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@37
    .line 83
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@3a
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 1

    #@0
    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@2
    return-object v0
.end method


# virtual methods
.method public isTypeInterrogation()Z
    .locals 1

    #@0
    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
