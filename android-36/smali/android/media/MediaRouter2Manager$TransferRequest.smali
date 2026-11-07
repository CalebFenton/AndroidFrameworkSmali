.class final Landroid/media/MediaRouter2Manager$TransferRequest;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferRequest"
.end annotation


# instance fields
.field public final blacklist mOldSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final blacklist mRequestId:I

.field public final blacklist mTargetRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method constructor blacklist <init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "oldSessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p3, "targetRoute"    # Landroid/media/MediaRoute2Info;

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput p1, p0, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    .line 1091
    iput-object p2, p0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1092
    iput-object p3, p0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    .line 1093
    return-void
.end method
