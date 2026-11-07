.class public final Landroid/os/HidlSupport$Mutable;
.super Ljava/lang/Object;
.source "HidlSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HidlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 104
    .local p0, "this":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 110
    return-void
.end method
