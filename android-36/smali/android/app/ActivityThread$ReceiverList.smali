.class final Landroid/app/ActivityThread$ReceiverList;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverList"
.end annotation


# instance fields
.field blacklist index:I

.field blacklist receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
