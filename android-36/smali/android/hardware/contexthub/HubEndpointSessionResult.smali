.class public Landroid/hardware/contexthub/HubEndpointSessionResult;
.super Ljava/lang/Object;
.source "HubEndpointSessionResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAccepted:Z

.field private final blacklist mReason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "accepted"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mAccepted:Z

    .line 40
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mReason:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static whitelist accept()Landroid/hardware/contexthub/HubEndpointSessionResult;
    .registers 3

    .line 67
    new-instance v0, Landroid/hardware/contexthub/HubEndpointSessionResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/contexthub/HubEndpointSessionResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist reject(Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;
    .registers 3
    .param p0, "reason"    # Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/hardware/contexthub/HubEndpointSessionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/contexthub/HubEndpointSessionResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getReason()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isAccepted()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mAccepted:Z

    return v0
.end method
