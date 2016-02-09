.class public Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;

    #@0
    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    #@5
    .line 1136
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@8
    .line 1130
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    #@0
    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    #@0
    .prologue
    .line 1187
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@2
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public select()V
    .locals 1

    #@0
    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@5
    .line 1228
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    #@2
    .line 1240
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 1241
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@8
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get11(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    #@11
    .line 1243
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v0

    #@a
    .line 1177
    const/4 v1, 0x0

    #@b
    .line 1176
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    #@2
    .line 1168
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 1169
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@8
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get11(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    #@11
    .line 1171
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1201
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1202
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 1203
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@8
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get11(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    #@11
    .line 1205
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1191
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@2
    .line 1190
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    #@0
    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    #@2
    .line 1157
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    #@2
    .line 1147
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1215
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    #@2
    .line 1216
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 1217
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@8
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get11(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    #@11
    .line 1219
    :cond_0
    return-object p0
.end method
