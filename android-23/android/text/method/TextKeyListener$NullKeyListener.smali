.class Landroid/text/method/TextKeyListener$NullKeyListener;
.super Ljava/lang/Object;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullKeyListener"
.end annotation


# static fields
.field private static sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;
    .locals 1

    #@0
    .prologue
    .line 235
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 236
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    #@6
    return-object v0

    #@7
    .line 238
    :cond_0
    new-instance v0, Landroid/text/method/TextKeyListener$NullKeyListener;

    #@9
    invoke-direct {v0}, Landroid/text/method/TextKeyListener$NullKeyListener;-><init>()V

    #@c
    sput-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    #@e
    .line 239
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    #@10
    return-object v0
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    #@0
    .prologue
    .line 231
    return-void
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 214
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 228
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 224
    const/4 v0, 0x0

    #@1
    return v0
.end method
