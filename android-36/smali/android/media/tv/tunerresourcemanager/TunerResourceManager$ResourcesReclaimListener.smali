.class public abstract Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
.super Ljava/lang/Object;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResourcesReclaimListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onReclaimResources()V
.end method
