.class Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateLinkPropertyResult"
.end annotation


# instance fields
.field public newLp:Landroid/net/LinkProperties;

.field public oldLp:Landroid/net/LinkProperties;

.field public setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;


# direct methods
.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "curLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 309
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@7
    .line 313
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@9
    .line 314
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@b
    .line 312
    return-void
.end method
