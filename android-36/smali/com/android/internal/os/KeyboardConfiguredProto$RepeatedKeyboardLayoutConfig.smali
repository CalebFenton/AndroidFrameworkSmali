.class public final Lcom/android/internal/os/KeyboardConfiguredProto$RepeatedKeyboardLayoutConfig;
.super Ljava/lang/Object;
.source "KeyboardConfiguredProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KeyboardConfiguredProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RepeatedKeyboardLayoutConfig"
.end annotation


# static fields
.field public static final blacklist KEYBOARD_LAYOUT_CONFIG:J = 0x20b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KeyboardConfiguredProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/os/KeyboardConfiguredProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
