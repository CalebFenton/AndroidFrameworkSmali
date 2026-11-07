.class public final synthetic Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->$r8$lambda$m63_0TZK0qvoEGTTUpxHf3juaHA(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;Landroid/database/Cursor;)Z

    move-result p1

    return p1
.end method
