.class public final Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText;
.super Ljava/lang/Object;
.source "InputConnectionCallProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputConnectionCallProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetSurroundingText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText$SurroundingText;
    }
.end annotation


# static fields
.field public static final blacklist AFTER_LENGTH:J = 0x10500000002L

.field public static final blacklist BEFORE_LENGTH:J = 0x10500000001L

.field public static final blacklist FLAGS:J = 0x10500000003L

.field public static final blacklist RESULT:J = 0x10b00000004L


# direct methods
.method public constructor blacklist <init>(Landroid/view/inputmethod/InputConnectionCallProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputConnectionCallProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
