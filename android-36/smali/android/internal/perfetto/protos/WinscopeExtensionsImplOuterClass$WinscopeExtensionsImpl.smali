.class public final Landroid/internal/perfetto/protos/WinscopeExtensionsImplOuterClass$WinscopeExtensionsImpl;
.super Ljava/lang/Object;
.source "WinscopeExtensionsImplOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/WinscopeExtensionsImplOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WinscopeExtensionsImpl"
.end annotation


# static fields
.field public static final blacklist ANDROID_INPUT_EVENT:J = 0x10b00000005L

.field public static final blacklist INPUTMETHOD_CLIENTS:J = 0x10b00000001L

.field public static final blacklist INPUTMETHOD_MANAGER_SERVICE:J = 0x10b00000003L

.field public static final blacklist INPUTMETHOD_SERVICE:J = 0x10b00000002L

.field public static final blacklist VIEWCAPTURE:J = 0x10b00000004L

.field public static final blacklist WINDOWMANAGER:J = 0x10b00000006L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/WinscopeExtensionsImplOuterClass;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/WinscopeExtensionsImplOuterClass;
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
