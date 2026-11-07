.class public final synthetic Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
