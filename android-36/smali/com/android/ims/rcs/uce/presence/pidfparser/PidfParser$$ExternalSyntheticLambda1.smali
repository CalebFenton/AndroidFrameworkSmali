.class public final synthetic Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;

    check-cast p1, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->lambda$convertToRcsContactUceCapability$1(Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)V

    return-void
.end method
