.class public final Landroid/view/inputmethod/InputMethodEditorTraceProto$InputMethodClientsTraceProto;
.super Ljava/lang/Object;
.source "InputMethodEditorTraceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodEditorTraceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputMethodClientsTraceProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodEditorTraceProto$InputMethodClientsTraceProto$ClientSideProto;
    }
.end annotation


# static fields
.field public static final blacklist CLIENT:J = 0x10b00000003L

.field public static final blacklist ELAPSED_REALTIME_NANOS:J = 0x10600000001L

.field public static final blacklist WHERE:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodEditorTraceProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodEditorTraceProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
