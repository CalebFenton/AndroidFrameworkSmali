.class public final Landroid/app/smartspace/SmartspaceManager;
.super Ljava/lang/Object;
.source "SmartspaceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;
    .registers 4
    .param p1, "smartspaceConfig"    # Landroid/app/smartspace/SmartspaceConfig;

    .line 62
    new-instance v0, Landroid/app/smartspace/SmartspaceSession;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/app/smartspace/SmartspaceSession;-><init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceConfig;)V

    return-object v0
.end method
