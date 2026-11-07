.class Landroid/view/HandwritingInitiator$DelegationCallback;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"

# interfaces
.implements Landroid/view/inputmethod/ConnectionlessHandwritingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegationCallback"
.end annotation


# instance fields
.field private final blacklist mDelegatePackageName:Ljava/lang/String;

.field private final blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/HandwritingInitiator;


# direct methods
.method private constructor blacklist <init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1130
    iput-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->this$0:Landroid/view/HandwritingInitiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    iput-object p2, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    .line 1132
    iput-object p3, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mDelegatePackageName:Ljava/lang/String;

    .line 1133
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;Landroid/view/HandwritingInitiator-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HandwritingInitiator$DelegationCallback;-><init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 1142
    packed-switch p1, :pswitch_data_26

    goto :goto_25

    .line 1148
    :pswitch_4
    iget-object v0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->this$0:Landroid/view/HandwritingInitiator;

    invoke-static {v0}, Landroid/view/HandwritingInitiator;->-$$Nest$fgetmImm(Landroid/view/HandwritingInitiator;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mDelegatePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_25

    .line 1144
    :pswitch_1b
    iget-object v0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1145
    nop

    .line 1152
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist onResult(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1137
    iget-object v0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1138
    return-void
.end method
