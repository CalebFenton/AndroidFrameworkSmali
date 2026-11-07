.class public final synthetic Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist convert(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/service/dreams/IDreamOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlay;

    move-result-object p1

    return-object p1
.end method
