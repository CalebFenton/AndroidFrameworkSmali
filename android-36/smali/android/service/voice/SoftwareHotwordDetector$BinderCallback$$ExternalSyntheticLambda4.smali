.class public final synthetic Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

.field public final synthetic blacklist f$1:Landroid/media/AudioFormat;

.field public final synthetic blacklist f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic blacklist f$3:Landroid/service/voice/HotwordDetectedResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$1:Landroid/media/AudioFormat;

    iput-object p3, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$3:Landroid/service/voice/HotwordDetectedResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$1:Landroid/media/AudioFormat;

    iget-object v2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;->f$3:Landroid/service/voice/HotwordDetectedResult;

    invoke-static {v0, v1, v2, v3}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->$r8$lambda$F5DId-mgkirB7jJ7KX4Y0AW_uY8(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V

    return-void
.end method
