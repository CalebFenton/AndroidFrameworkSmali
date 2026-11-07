.class public final synthetic Landroid/net/TetheringManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$RequestHelper;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final blacklist runRequest(Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda1;->f$0:Z

    invoke-static {v0, p1, p2}, Landroid/net/TetheringManager;->lambda$setPreferTestNetworks$14(ZLandroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method
