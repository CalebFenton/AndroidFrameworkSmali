.class Lcom/android/server/policy/PhoneWindowManager$22;
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
    .line 6095
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->val$msg:Ljava/lang/CharSequence;

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
    .line 6097
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 6099
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@9
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v2

    #@f
    .line 6100
    const-string/jumbo v3, "android.hardware.type.watch"

    #@12
    .line 6099
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 6101
    const v1, 0x10304bb

    #@1b
    .line 6109
    .local v1, "theme":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1d
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$22$1;

    #@1f
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@21
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23
    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$22$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$22;Landroid/content/Context;I)V

    #@26
    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@28
    .line 6132
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2a
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 6133
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@38
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@3a
    const v3, 0x104036b

    #@3d
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    #@40
    .line 6137
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@42
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@44
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    #@47
    .line 6138
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@49
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@4b
    const/4 v3, 0x1

    #@4c
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@4f
    .line 6139
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@51
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@53
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@56
    move-result-object v2

    #@57
    .line 6140
    const/16 v3, 0x7e5

    #@59
    .line 6139
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@5c
    .line 6141
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@5e
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@60
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@63
    move-result-object v2

    #@64
    .line 6142
    const/16 v3, 0x102

    #@66
    .line 6141
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    #@69
    .line 6144
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@6b
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@6d
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@70
    move-result-object v2

    #@71
    const/high16 v3, 0x3f800000    # 1.0f

    #@73
    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    #@76
    .line 6145
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@78
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@7a
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@81
    move-result-object v0

    #@82
    .line 6146
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x5

    #@83
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@85
    .line 6147
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@87
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@89
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@90
    .line 6148
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@92
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@94
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    #@97
    .line 6149
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@99
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@9b
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    #@9e
    .line 6151
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "theme":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@a0
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@a2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$22;->val$msg:Ljava/lang/CharSequence;

    #@a4
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@a7
    .line 6096
    return-void

    #@a8
    .line 6102
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@aa
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@ac
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@af
    move-result-object v2

    #@b0
    .line 6103
    const-string/jumbo v3, "android.hardware.type.television"

    #@b3
    .line 6102
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@b6
    move-result v2

    #@b7
    if-eqz v2, :cond_2

    #@b9
    .line 6104
    const v1, 0x103049a

    #@bc
    .restart local v1    # "theme":I
    goto/16 :goto_0

    #@be
    .line 6106
    .end local v1    # "theme":I
    :cond_2
    const/4 v1, 0x0

    #@bf
    .restart local v1    # "theme":I
    goto/16 :goto_0

    #@c1
    .line 6135
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@c3
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@c5
    const v3, 0x104036c

    #@c8
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    #@cb
    goto/16 :goto_1
.end method
