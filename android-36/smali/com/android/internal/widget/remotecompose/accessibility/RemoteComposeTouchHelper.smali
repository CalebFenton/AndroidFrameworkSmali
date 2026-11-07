.class public Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;
.super Ljava/lang/Object;
.source "RemoteComposeTouchHelper.java"


# static fields
.field public static final blacklist REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeAccessibilityRegistrar;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeAccessibilityRegistrar;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
