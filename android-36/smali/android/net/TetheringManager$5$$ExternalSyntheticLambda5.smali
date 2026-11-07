.class public final synthetic Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager$5;

.field public final synthetic blacklist f$1:Landroid/net/TetheringConfigurationParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager$5;Landroid/net/TetheringConfigurationParcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;->f$0:Landroid/net/TetheringManager$5;

    iput-object p2, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;->f$1:Landroid/net/TetheringConfigurationParcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;->f$0:Landroid/net/TetheringManager$5;

    iget-object v1, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda5;->f$1:Landroid/net/TetheringConfigurationParcel;

    invoke-static {v0, v1}, Landroid/net/TetheringManager$5;->$r8$lambda$xi856wBZCigrPbXMGWaqY-4cixI(Landroid/net/TetheringManager$5;Landroid/net/TetheringConfigurationParcel;)V

    return-void
.end method
