.class Landroid/app/LauncherActivity$ActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field protected final mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowIcons:Z

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method static synthetic -get0(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/LauncherActivity;
    .param p2, "resizer"    # Landroid/app/LauncherActivity$IconResizer;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 97
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    #@c
    .line 109
    iput-object p2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    #@e
    .line 111
    const-string/jumbo v0, "layout_inflater"

    #@11
    .line 110
    invoke-virtual {p1, v0}, Landroid/app/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/LayoutInflater;

    #@17
    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@19
    .line 112
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->onEvaluateShowIcons()Z

    #@1c
    move-result v0

    #@1d
    iput-boolean v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mShowIcons:Z

    #@1f
    .line 113
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@25
    .line 108
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/LauncherActivity$ListItem;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 163
    check-cast v0, Landroid/widget/TextView;

    #@4
    .line 164
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 165
    iget-boolean v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mShowIcons:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 166
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 167
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    #@13
    iget-object v2, p2, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@15
    iget-object v3, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    #@17
    invoke-virtual {v3}, Landroid/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    #@25
    .line 169
    :cond_0
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@2a
    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 174
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 175
    new-instance v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;)V

    #@a
    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    #@c
    .line 177
    :cond_0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    #@e
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 147
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 152
    if-nez p2, :cond_0

    #@2
    .line 153
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@4
    .line 154
    const v2, 0x1090024

    #@7
    const/4 v3, 0x0

    #@8
    .line 153
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 158
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@e
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    #@14
    invoke-direct {p0, v0, v1}, Landroid/app/LauncherActivity$ActivityAdapter;->bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V

    #@17
    .line 159
    return-object v0

    #@18
    .line 156
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    #@19
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 117
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 118
    return-object v3

    #@6
    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@8
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    #@a
    iget-object v2, v2, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    #@c
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f
    .line 122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@11
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    #@17
    .line 123
    .local v1, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    #@19
    iget-object v3, v1, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1e
    .line 124
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 125
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    #@24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@27
    .line 127
    :cond_1
    return-object v0
.end method

.method public itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 132
    return-object v1

    #@6
    .line 135
    :cond_0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/LauncherActivity$ListItem;

    #@e
    return-object v0
.end method
