.class public final synthetic Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;IZLjava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    iput p2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->$r8$lambda$W7xQkh6c7X3e_9tKvcE92k0ZXPI(Lcom/android/ims/rcs/uce/request/UceRequestManager;IZLjava/util/List;Landroid/net/Uri;)V

    return-void
.end method
