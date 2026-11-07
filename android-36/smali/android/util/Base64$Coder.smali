.class abstract Landroid/util/Base64$Coder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Coder"
.end annotation


# instance fields
.field public greylist-max-o op:I

.field public greylist-max-o output:[B


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o maxOutputSize(I)I
.end method

.method public abstract greylist-max-o process([BIIZ)Z
.end method
