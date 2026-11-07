.class public final synthetic Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/hardware/radio/ITuner$Stub;->lambda$onTransact$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
