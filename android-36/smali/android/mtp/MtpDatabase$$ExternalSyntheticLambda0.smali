.class public final synthetic Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/mtp/MtpDatabase;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/mtp/MtpDatabase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;->f$0:Landroid/mtp/MtpDatabase;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;->f$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->$r8$lambda$I8VeYPyD-kH2DopPIkeUIdtMAPg(Landroid/mtp/MtpDatabase;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
