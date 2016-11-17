.class Lcom/android/server/policy/PhoneWindowManager$21;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$msg"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6773
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->val$msg:Ljava/lang/CharSequence;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 6775
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 6777
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@9
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-get2(Lcom/android/server/policy/PhoneWindowManager;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 6778
    const v1, 0x10304c6

    #@12
    .line 6785
    .local v1, "theme":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@14
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$21$1;

    #@16
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@18
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$21$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$21;Landroid/content/Context;I)V

    #@1d
    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@1f
    .line 6808
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@21
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_3

    #@2d
    .line 6809
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2f
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@31
    const v3, 0x10403a7

    #@34
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    #@37
    .line 6813
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@39
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@3b
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    #@3e
    .line 6814
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@40
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@42
    const/4 v3, 0x1

    #@43
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@46
    .line 6815
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@48
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@4a
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@4d
    move-result-object v2

    #@4e
    .line 6816
    const/16 v3, 0x7e5

    #@50
    .line 6815
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@53
    .line 6817
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@55
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@57
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@5a
    move-result-object v2

    #@5b
    .line 6818
    const/16 v3, 0x102

    #@5d
    .line 6817
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    #@60
    .line 6820
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@62
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@64
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@67
    move-result-object v2

    #@68
    const/high16 v3, 0x3f800000    # 1.0f

    #@6a
    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    #@6d
    .line 6821
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@6f
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@71
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@78
    move-result-object v0

    #@79
    .line 6822
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x5

    #@7a
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@7c
    .line 6823
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7e
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@80
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@87
    .line 6824
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@89
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@8b
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    #@8e
    .line 6825
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@90
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@92
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    #@95
    .line 6827
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "theme":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@97
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@99
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$21;->val$msg:Ljava/lang/CharSequence;

    #@9b
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@9e
    .line 6774
    return-void

    #@9f
    .line 6779
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@a1
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a6
    move-result-object v2

    #@a7
    const-string/jumbo v3, "android.hardware.type.television"

    #@aa
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_2

    #@b0
    .line 6780
    const v1, 0x10304a5

    #@b3
    .restart local v1    # "theme":I
    goto/16 :goto_0

    #@b5
    .line 6782
    .end local v1    # "theme":I
    :cond_2
    const/4 v1, 0x0

    #@b6
    .restart local v1    # "theme":I
    goto/16 :goto_0

    #@b8
    .line 6811
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@ba
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@bc
    const v3, 0x10403a8

    #@bf
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    #@c2
    goto/16 :goto_1
.end method
