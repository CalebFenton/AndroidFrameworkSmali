.class public final synthetic Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-static {p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->lambda$initialize$0(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z

    move-result p1

    return p1
.end method
