.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityHoneycomb;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;,
        Landroid/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroid/support/v4/app/FragmentActivity$1;
    }
.end annotation


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;-><init>()V

    #@3
    .line 91
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    #@5
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@a
    .line 110
    new-instance v0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    #@c
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    #@f
    invoke-static {v0}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@15
    .line 78
    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 675
    if-nez p3, :cond_0

    #@5
    .line 676
    const-string/jumbo v3, "null"

    #@8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 677
    return-void

    #@c
    .line 679
    :cond_0
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 680
    instance-of v3, p3, Landroid/view/ViewGroup;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 681
    return-void

    #@18
    :cond_1
    move-object v1, p3

    #@19
    .line 683
    check-cast v1, Landroid/view/ViewGroup;

    #@1b
    .line 684
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1e
    move-result v0

    #@1f
    .line 685
    .local v0, "N":I
    if-gtz v0, :cond_2

    #@21
    .line 686
    return-void

    #@22
    .line 688
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "  "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p1

    #@36
    .line 689
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@39
    .line 690
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@40
    .line 689
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 673
    :cond_3
    return-void
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 827
    const/4 v0, -0x1

    #@1
    if-ne p3, v0, :cond_0

    #@3
    .line 828
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    #@6
    .line 829
    return-void

    #@7
    .line 831
    :cond_0
    and-int/lit16 v0, p3, -0x100

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Can only use lower 8 bits for requestCode"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 834
    :cond_1
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    #@17
    .line 836
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    shl-int/lit8 v0, v0, 0x8

    #@1d
    and-int/lit16 v1, p3, 0xff

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 835
    invoke-static {p0, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    #@23
    .line 826
    return-void
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 13
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/16 v10, 0x56

    #@2
    const/16 v8, 0x46

    #@4
    const/16 v12, 0x2c

    #@6
    const/16 v11, 0x20

    #@8
    const/16 v9, 0x2e

    #@a
    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    const/16 v7, 0x80

    #@e
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@11
    .line 609
    .local v3, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 610
    const/16 v7, 0x7b

    #@1e
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 611
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@24
    move-result v7

    #@25
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 612
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 613
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@32
    move-result v7

    #@33
    sparse-switch v7, :sswitch_data_0

    #@36
    .line 617
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 619
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_2

    #@3f
    move v7, v8

    #@40
    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    .line 620
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_3

    #@49
    const/16 v7, 0x45

    #@4b
    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 621
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_4

    #@54
    move v7, v9

    #@55
    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    .line 622
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_5

    #@5e
    const/16 v7, 0x48

    #@60
    :goto_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    .line 623
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    #@66
    move-result v7

    #@67
    if-eqz v7, :cond_6

    #@69
    move v7, v10

    #@6a
    :goto_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    .line 624
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    #@70
    move-result v7

    #@71
    if-eqz v7, :cond_7

    #@73
    const/16 v7, 0x43

    #@75
    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 625
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    #@7b
    move-result v7

    #@7c
    if-eqz v7, :cond_8

    #@7e
    const/16 v7, 0x4c

    #@80
    :goto_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    .line 626
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    .line 627
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    #@89
    move-result v7

    #@8a
    if-eqz v7, :cond_9

    #@8c
    :goto_8
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8f
    .line 628
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    #@92
    move-result v7

    #@93
    if-eqz v7, :cond_a

    #@95
    const/16 v7, 0x53

    #@97
    :goto_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    .line 629
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    #@9d
    move-result v7

    #@9e
    if-eqz v7, :cond_0

    #@a0
    const/16 v9, 0x50

    #@a2
    :cond_0
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a5
    .line 630
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a8
    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@ab
    move-result v7

    #@ac
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    .line 632
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b2
    .line 633
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@b5
    move-result v7

    #@b6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    .line 634
    const/16 v7, 0x2d

    #@bb
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    .line 635
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@c1
    move-result v7

    #@c2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    .line 636
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c8
    .line 637
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@cb
    move-result v7

    #@cc
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@d2
    move-result v2

    #@d3
    .line 639
    .local v2, "id":I
    const/4 v7, -0x1

    #@d4
    if-eq v2, v7, :cond_1

    #@d6
    .line 640
    const-string/jumbo v7, " #"

    #@d9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 641
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@e6
    move-result-object v5

    #@e7
    .line 643
    .local v5, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    #@e9
    if-eqz v5, :cond_1

    #@eb
    .line 646
    const/high16 v7, -0x1000000

    #@ed
    and-int/2addr v7, v2

    #@ee
    sparse-switch v7, :sswitch_data_1

    #@f1
    .line 654
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    #@f4
    move-result-object v4

    #@f5
    .line 657
    .local v4, "pkgname":Ljava/lang/String;
    :goto_a
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@f8
    move-result-object v6

    #@f9
    .line 658
    .local v6, "typename":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@fc
    move-result-object v1

    #@fd
    .line 659
    .local v1, "entryname":Ljava/lang/String;
    const-string/jumbo v7, " "

    #@100
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    .line 660
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    .line 661
    const-string/jumbo v7, ":"

    #@109
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    .line 662
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    .line 663
    const-string/jumbo v7, "/"

    #@112
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 664
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@118
    .line 669
    .end local v1    # "entryname":Ljava/lang/String;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "typename":Ljava/lang/String;
    :cond_1
    :goto_b
    const-string/jumbo v7, "}"

    #@11b
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 670
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v7

    #@122
    return-object v7

    #@123
    .line 614
    .end local v2    # "id":I
    :sswitch_0
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@126
    goto/16 :goto_0

    #@128
    .line 615
    :sswitch_1
    const/16 v7, 0x49

    #@12a
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12d
    goto/16 :goto_0

    #@12f
    .line 616
    :sswitch_2
    const/16 v7, 0x47

    #@131
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@134
    goto/16 :goto_0

    #@136
    :cond_2
    move v7, v9

    #@137
    .line 619
    goto/16 :goto_1

    #@139
    :cond_3
    move v7, v9

    #@13a
    .line 620
    goto/16 :goto_2

    #@13c
    .line 621
    :cond_4
    const/16 v7, 0x44

    #@13e
    goto/16 :goto_3

    #@140
    :cond_5
    move v7, v9

    #@141
    .line 622
    goto/16 :goto_4

    #@143
    :cond_6
    move v7, v9

    #@144
    .line 623
    goto/16 :goto_5

    #@146
    :cond_7
    move v7, v9

    #@147
    .line 624
    goto/16 :goto_6

    #@149
    :cond_8
    move v7, v9

    #@14a
    .line 625
    goto/16 :goto_7

    #@14c
    :cond_9
    move v8, v9

    #@14d
    .line 627
    goto/16 :goto_8

    #@14f
    :cond_a
    move v7, v9

    #@150
    .line 628
    goto/16 :goto_9

    #@152
    .line 648
    .restart local v2    # "id":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    :sswitch_3
    :try_start_1
    const-string/jumbo v4, "app"

    #@155
    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_a

    #@156
    .line 651
    .end local v4    # "pkgname":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@159
    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_a

    #@15a
    .line 665
    .end local v4    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@15b
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_b

    #@15c
    .line 613
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    #@16a
    .line 646
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 695
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 696
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@7
    .line 697
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    #@9
    .line 698
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 699
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    #@11
    .line 694
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 588
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v2, 0xb

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 592
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    const-string/jumbo v1, "Local FragmentActivity "

    #@c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 593
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 594
    const-string/jumbo v1, " State:"

    #@1d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "  "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 596
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    const-string/jumbo v1, "mCreated="

    #@3a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 597
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    #@3f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@42
    const-string/jumbo v1, "mResumed="

    #@45
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 598
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@4d
    const-string/jumbo v1, " mStopped="

    #@50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 599
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@55
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@58
    const-string/jumbo v1, " mReallyStopped="

    #@5b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 600
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@60
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@63
    .line 601
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@65
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@68
    .line 602
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@6a
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@71
    .line 603
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    const-string/jumbo v1, "View Hierarchy:"

    #@77
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7a
    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    const-string/jumbo v2, "  "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@95
    move-result-object v2

    #@96
    invoke-direct {p0, v1, p3, v2}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@99
    .line 587
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 553
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 552
    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    #@7
    .line 554
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    #@9
    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    #@b
    :cond_0
    return-object v1
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 136
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 137
    shr-int/lit8 v3, p1, 0x10

    #@7
    .line 138
    .local v3, "index":I
    if-eqz v3, :cond_3

    #@9
    .line 139
    add-int/lit8 v3, v3, -0x1

    #@b
    .line 140
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@d
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I

    #@10
    move-result v1

    #@11
    .line 141
    .local v1, "activeFragmentsCount":I
    if-eqz v1, :cond_0

    #@13
    if-gez v3, :cond_1

    #@15
    .line 142
    :cond_0
    const-string/jumbo v4, "FragmentActivity"

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "Activity result fragment index out of range: 0x"

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 144
    return-void

    #@34
    .line 141
    :cond_1
    if-ge v3, v1, :cond_0

    #@36
    .line 147
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@38
    new-instance v5, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@3d
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentController;->getActiveFragments(Ljava/util/List;)Ljava/util/List;

    #@40
    move-result-object v0

    #@41
    .line 148
    .local v0, "activeFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@47
    .line 149
    .local v2, "frag":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_2

    #@49
    .line 150
    const-string/jumbo v4, "FragmentActivity"

    #@4c
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "Activity result no fragment exists for index: 0x"

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 155
    :goto_0
    return-void

    #@68
    .line 153
    :cond_2
    const v4, 0xffff

    #@6b
    and-int/2addr v4, p1

    #@6c
    invoke-virtual {v2, v4, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@6f
    goto :goto_0

    #@70
    .line 158
    .end local v0    # "activeFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v1    # "activeFragmentsCount":I
    .end local v2    # "frag":Landroid/support/v4/app/Fragment;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onActivityResult(IILandroid/content/Intent;)V

    #@73
    .line 135
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 724
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 167
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V

    #@f
    .line 165
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 231
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@5
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 240
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@3
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V

    #@6
    .line 242
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreate(Landroid/os/Bundle;)V

    #@9
    .line 245
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    #@f
    .line 246
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    #@11
    .line 247
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@13
    iget-object v4, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    #@15
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    #@18
    .line 249
    :cond_0
    if-eqz p1, :cond_2

    #@1a
    .line 250
    const-string/jumbo v3, "android:support:fragments"

    #@1d
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v1

    #@21
    .line 251
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@23
    if-eqz v0, :cond_1

    #@25
    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/List;

    #@27
    :cond_1
    invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    #@2a
    .line 253
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2c
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V

    #@2f
    .line 239
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 261
    if-nez p1, :cond_1

    #@2
    .line 262
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    .line 263
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    .line 264
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@13
    const/16 v2, 0xb

    #@15
    if-lt v1, v2, :cond_0

    #@17
    .line 265
    return v0

    #@18
    .line 270
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 272
    .end local v0    # "show":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onDestroy()V

    #@3
    .line 288
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    #@7
    .line 290
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V

    #@c
    .line 291
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V

    #@11
    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/4 v1, 0x5

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 300
    const/4 v0, 0x4

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 301
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    #@11
    .line 305
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 308
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 316
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onLowMemory()V

    #@3
    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V

    #@8
    .line 315
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 326
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 329
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 337
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 331
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@f
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 334
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@16
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 329
    nop

    #@1c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onNewIntent(Landroid/content/Intent;)V

    #@3
    .line 381
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    #@8
    .line 379
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 346
    packed-switch p1, :pswitch_data_0

    #@3
    .line 351
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPanelClosed(ILandroid/view/Menu;)V

    #@6
    .line 345
    return-void

    #@7
    .line 348
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@9
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@c
    goto :goto_0

    #@d
    .line 346
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 359
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPause()V

    #@4
    .line 360
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    #@7
    .line 361
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 362
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@14
    .line 363
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    #@17
    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@19
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchPause()V

    #@1c
    .line 358
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    #@0
    .prologue
    .line 413
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPostResume()V

    #@3
    .line 414
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 415
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    #@c
    .line 416
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    #@11
    .line 412
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 434
    if-nez p1, :cond_1

    #@3
    if-eqz p3, :cond_1

    #@5
    .line 435
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 436
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    #@b
    .line 437
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    #@e
    .line 438
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@11
    .line 440
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    #@14
    move-result v0

    #@15
    .line 441
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@17
    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 442
    return v0

    #@1d
    .line 444
    .end local v0    # "goforit":Z
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@20
    move-result v1

    #@21
    return v1
.end method

.method onReallyStop()V
    .locals 2

    #@0
    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    #@4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    #@7
    .line 713
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V

    #@c
    .line 710
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 786
    shr-int/lit8 v4, p1, 0x8

    #@2
    and-int/lit16 v3, v4, 0xff

    #@4
    .line 787
    .local v3, "index":I
    if-eqz v3, :cond_2

    #@6
    .line 788
    add-int/lit8 v3, v3, -0x1

    #@8
    .line 789
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@a
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I

    #@d
    move-result v1

    #@e
    .line 790
    .local v1, "activeFragmentsCount":I
    if-eqz v1, :cond_0

    #@10
    if-gez v3, :cond_1

    #@12
    .line 791
    :cond_0
    const-string/jumbo v4, "FragmentActivity"

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "Activity result fragment index out of range: 0x"

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    .line 792
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 791
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 793
    return-void

    #@31
    .line 790
    :cond_1
    if-ge v3, v1, :cond_0

    #@33
    .line 796
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@35
    new-instance v5, Ljava/util/ArrayList;

    #@37
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@3a
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentController;->getActiveFragments(Ljava/util/List;)Ljava/util/List;

    #@3d
    move-result-object v0

    #@3e
    .line 797
    .local v0, "activeFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@44
    .line 798
    .local v2, "frag":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_3

    #@46
    .line 799
    const-string/jumbo v4, "FragmentActivity"

    #@49
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v6, "Activity result no fragment exists for index: 0x"

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 799
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 785
    .end local v0    # "activeFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v1    # "activeFragmentsCount":I
    .end local v2    # "frag":Landroid/support/v4/app/Fragment;
    :cond_2
    :goto_0
    return-void

    #@65
    .line 802
    .restart local v0    # "activeFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .restart local v1    # "activeFragmentsCount":I
    .restart local v2    # "frag":Landroid/support/v4/app/Fragment;
    :cond_3
    and-int/lit16 v4, p1, 0xff

    #@67
    invoke-virtual {v2, v4, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@6a
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    #@0
    .prologue
    .line 402
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onResume()V

    #@3
    .line 403
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@9
    .line 404
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    #@c
    .line 405
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    #@11
    .line 401
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchResume()V

    #@5
    .line 425
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 543
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 461
    iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 462
    const/4 v4, 0x1

    #@6
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    #@9
    .line 465
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 467
    .local v0, "custom":Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@f
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainNonConfig()Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    .line 468
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@15
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    #@18
    move-result-object v2

    #@19
    .line 470
    .local v2, "loaders":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-nez v1, :cond_1

    #@1b
    if-nez v2, :cond_1

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 471
    return-object v5

    #@20
    .line 474
    :cond_1
    new-instance v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    #@22
    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    #@25
    .line 475
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    #@27
    .line 476
    iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/List;

    #@29
    .line 477
    iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    #@2b
    .line 478
    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 487
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@5
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    .line 488
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@b
    .line 489
    const-string/jumbo v1, "android:support:fragments"

    #@e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    .line 485
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 499
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onStart()V

    #@5
    .line 501
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@7
    .line 502
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@9
    .line 503
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 505
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 506
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    #@14
    .line 507
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V

    #@19
    .line 510
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    #@1e
    .line 511
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@20
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    #@23
    .line 513
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    #@28
    .line 517
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStart()V

    #@2d
    .line 518
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2f
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V

    #@32
    .line 498
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 387
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 526
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onStop()V

    #@4
    .line 528
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@6
    .line 529
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@b
    .line 531
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    #@d
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStop()V

    #@10
    .line 525
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 193
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    #@3
    .line 192
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 206
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    #@3
    .line 205
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 745
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_0

    #@3
    const/high16 v0, -0x10000

    #@5
    and-int/2addr v0, p2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 748
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V

    #@14
    .line 744
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 812
    if-ne p3, v0, :cond_0

    #@3
    .line 813
    invoke-super {p0, p2, v0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V

    #@6
    .line 814
    return-void

    #@7
    .line 816
    :cond_0
    const/high16 v0, -0x10000

    #@9
    and-int/2addr v0, p3

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 819
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    shl-int/lit8 v0, v0, 0x10

    #@1b
    const v1, 0xffff

    #@1e
    and-int/2addr v1, p3

    #@1f
    add-int/2addr v0, v1

    #@20
    invoke-super {p0, p2, v0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V

    #@23
    .line 811
    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    #@0
    .prologue
    .line 181
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    #@3
    .line 180
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    #@0
    .prologue
    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 568
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    #@9
    .line 569
    return-void

    #@a
    .line 574
    :cond_0
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    #@d
    .line 564
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    #@0
    .prologue
    .line 214
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    #@3
    .line 213
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    #@0
    .prologue
    .line 222
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    #@3
    .line 221
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 2
    .param p1, "requestCode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 760
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 761
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    #@7
    .line 752
    :cond_0
    return-void

    #@8
    .line 762
    :cond_1
    and-int/lit16 v0, p1, -0x100

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Can only use lower 8 bits for requestCode"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method
