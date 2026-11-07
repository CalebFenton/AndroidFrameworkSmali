.class public final Landroid/companion/Telecom$Request;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/Telecom$Request$ControlAction;,
        Landroid/companion/Telecom$Request$CreateAction;
    }
.end annotation


# static fields
.field public static final blacklist CONTROL_ACTION:J = 0x10b00000002L

.field public static final blacklist CREATE_ACTION:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/companion/Telecom;)V
    .registers 2
    .param p1, "this$0"    # Landroid/companion/Telecom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
