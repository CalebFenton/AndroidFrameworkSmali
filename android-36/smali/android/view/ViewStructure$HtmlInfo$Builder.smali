.class public abstract Landroid/view/ViewStructure$HtmlInfo$Builder;
.super Ljava/lang/Object;
.source "ViewStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewStructure$HtmlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
.end method

.method public abstract whitelist build()Landroid/view/ViewStructure$HtmlInfo;
.end method
