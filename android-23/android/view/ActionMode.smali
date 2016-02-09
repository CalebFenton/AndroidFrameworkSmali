.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$Callback;,
        Landroid/view/ActionMode$Callback2;
    }
.end annotation


# static fields
.field public static final DEFAULT_HIDE_DURATION:I = -0x1

.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_PRIMARY:I


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/view/ActionMode;->mType:I

    #@6
    .line 34
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    #@0
    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 194
    iget v0, p0, Landroid/view/ActionMode;->mType:I

    #@2
    return v0
.end method

.method public hide(J)V
    .locals 0
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 226
    return-void
.end method

.method public abstract invalidate()V
.end method

.method public invalidateContentRect()V
    .locals 0

    #@0
    .prologue
    .line 213
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 282
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 271
    return-void
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    #@2
    .line 67
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0
    .param p1, "titleOptional"    # Z

    #@0
    .prologue
    .line 145
    iput-boolean p1, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    #@2
    .line 144
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 185
    iput p1, p0, Landroid/view/ActionMode;->mType:I

    #@2
    .line 184
    return-void
.end method
