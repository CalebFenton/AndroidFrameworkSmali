.class public final Landroid/companion/Telecom$Request$CreateAction;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CreateAction"
.end annotation


# static fields
.field public static final blacklist ADDRESS:J = 0x10900000002L

.field public static final blacklist FACILITATOR:J = 0x10b00000003L

.field public static final blacklist ID:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Landroid/companion/Telecom$Request;)V
    .registers 2
    .param p1, "this$1"    # Landroid/companion/Telecom$Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
