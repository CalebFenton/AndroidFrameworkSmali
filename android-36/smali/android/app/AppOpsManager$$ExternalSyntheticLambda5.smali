.class public final synthetic Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/AppOpsManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/AppOpsManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;->f$0:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;->f$0:Landroid/app/AppOpsManager;

    invoke-static {v0}, Landroid/app/AppOpsManager;->$r8$lambda$ZCdUg5mlmWB8DXCRpS1C_JBbS7Y(Landroid/app/AppOpsManager;)V

    return-void
.end method
