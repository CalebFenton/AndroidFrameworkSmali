.class abstract Landroid/os/MessageQueue$MessageCompare;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MessageCompare"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 2846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/MessageQueue$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
.end method
