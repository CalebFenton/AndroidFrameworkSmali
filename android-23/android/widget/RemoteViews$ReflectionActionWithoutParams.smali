.class final Landroid/widget/RemoteViews$ReflectionActionWithoutParams;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReflectionActionWithoutParams"
.end annotation


# static fields
.field public static final TAG:I = 0x5


# instance fields
.field final methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 899
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 900
    iput p2, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->viewId:I

    #@8
    .line 901
    iput-object p3, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    #@a
    .line 899
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 904
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->viewId:I

    #@c
    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    #@12
    .line 904
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 917
    iget v3, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->viewId:I

    #@2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v2

    #@6
    .line 918
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    #@8
    return-void

    #@9
    .line 921
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->this$0:Landroid/widget/RemoteViews;

    #@b
    iget-object v4, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    #@d
    const/4 v5, 0x0

    #@e
    invoke-static {v3, v2, v4, v5}, Landroid/widget/RemoteViews;->-wrap2(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x0

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 916
    return-void

    #@19
    .line 924
    :catch_0
    move-exception v1

    #@1a
    .line 925
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    #@1c
    invoke-direct {v3, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    #@1f
    throw v3

    #@20
    .line 922
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@21
    .line 923
    .local v0, "e":Landroid/widget/RemoteViews$ActionException;
    throw v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 939
    const-string/jumbo v0, "ReflectionActionWithoutParams"

    #@3
    return-object v0
.end method

.method public mergeBehavior()I
    .locals 2

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "showNext"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    #@d
    const-string/jumbo v1, "showPrevious"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 932
    :cond_0
    const/4 v0, 0x2

    #@17
    return v0

    #@18
    .line 934
    :cond_1
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 910
    const/4 v0, 0x5

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 911
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->viewId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 912
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 909
    return-void
.end method
