.class public final Lcom/android/internal/os/KeyboardConfiguredProto$KeyboardLayoutConfig;
.super Ljava/lang/Object;
.source "KeyboardConfiguredProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KeyboardConfiguredProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyboardLayoutConfig"
.end annotation


# static fields
.field public static final blacklist IME_LANGUAGE_TAG:J = 0x10900000006L

.field public static final blacklist IME_LAYOUT_TYPE:J = 0x10500000005L

.field public static final blacklist KEYBOARD_LANGUAGE_TAG:J = 0x10900000002L

.field public static final blacklist KEYBOARD_LAYOUT_NAME:J = 0x10900000003L

.field public static final blacklist KEYBOARD_LAYOUT_TYPE:J = 0x10500000001L

.field public static final blacklist LAYOUT_SELECTION_CRITERIA:J = 0x10500000004L


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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
