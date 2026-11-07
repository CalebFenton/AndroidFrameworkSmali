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
.field private static greylist-max-o sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;
    .registers 1

    .line 241
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    if-eqz v0, :cond_7

    .line 242
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    return-object v0

    .line 244
    :cond_7
    new-instance v0, Landroid/text/method/TextKeyListener$NullKeyListener;

    invoke-direct {v0}, Landroid/text/method/TextKeyListener$NullKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    .line 245
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    return-object v0
.end method


# virtual methods
.method public whitelist clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 238
    return-void
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 230
    const/4 v0, 0x0

    return v0
.end method
