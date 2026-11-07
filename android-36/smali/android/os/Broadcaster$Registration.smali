.class Landroid/os/Broadcaster$Registration;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Broadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Registration"
.end annotation


# instance fields
.field greylist-max-o next:Landroid/os/Broadcaster$Registration;

.field greylist-max-o prev:Landroid/os/Broadcaster$Registration;

.field greylist-max-o senderWhat:I

.field greylist-max-o targetWhats:[I

.field greylist-max-o targets:[Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Landroid/os/Broadcaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;)V

    return-void
.end method
