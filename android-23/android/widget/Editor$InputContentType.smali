.class Landroid/widget/Editor$InputContentType;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContentType"
.end annotation


# instance fields
.field enterDown:Z

.field extras:Landroid/os/Bundle;

.field imeActionId:I

.field imeActionLabel:Ljava/lang/CharSequence;

.field imeOptions:I

.field onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field privateImeOptions:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 5077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5078
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@6
    .line 5077
    return-void
.end method
