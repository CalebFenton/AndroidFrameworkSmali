.class public final enum Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
.super Ljava/lang/Enum;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

.field public static final enum ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

.field public static final enum ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

.field public static final enum ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

.field public static final enum ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

.field public static final enum ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

.field public static final enum SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;


# instance fields
.field public mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 58
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@7
    const-string/jumbo v1, "SUCCESS"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@f
    .line 59
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@11
    const-string/jumbo v1, "ERR_BadCommand"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@19
    .line 60
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@1b
    const-string/jumbo v1, "ERR_UnacceptableParameter"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@23
    .line 61
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@25
    const-string/jumbo v1, "ERR_GetLastErrorFromRil"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2d
    .line 62
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2f
    const-string/jumbo v1, "ERR_Stale"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@37
    .line 63
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@39
    const-string/jumbo v1, "ERR_RilError"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@42
    .line 57
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@45
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 68
    const/4 v0, 0x0

    #@4
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@a
    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 1

    #@0
    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->name()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "  SetupResult.mFailCause="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
