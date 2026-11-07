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
.field private greylist-max-r mCallback:Landroid/app/ActionBar$TabListener;

.field private blacklist mContentDesc:Ljava/lang/CharSequence;

.field private blacklist mCustomView:Landroid/view/View;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mPosition:I

.field private blacklist mTag:Ljava/lang/Object;

.field private blacklist mText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1152
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/app/ActionBar$TabListener;
    .registers 2

    .line 1174
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1271
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .registers 2

    .line 1185
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1205
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getPosition()I
    .registers 2

    .line 1210
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/Object;
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1219
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist select()V
    .registers 2

    .line 1252
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1253
    return-void
.end method

.method public whitelist setContentDescription(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .line 1257
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .line 1262
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1263
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1264
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1266
    :cond_11
    return-object p0
.end method

.method public whitelist setCustomView(I)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "layoutResId"    # I

    .line 1199
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1200
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1199
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1190
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1191
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1192
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1194
    :cond_11
    return-object p0
.end method

.method public whitelist setIcon(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .line 1233
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1224
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1225
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1226
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1228
    :cond_11
    return-object p0
.end method

.method public blacklist setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 1214
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1215
    return-void
.end method

.method public whitelist setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .registers 2
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    .line 1179
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 1180
    return-object p0
.end method

.method public whitelist setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1169
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1170
    return-object p0
.end method

.method public whitelist setText(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .line 1247
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1238
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1239
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1240
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1242
    :cond_11
    return-object p0
.end method
