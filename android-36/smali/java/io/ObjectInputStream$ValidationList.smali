.class Ljava/io/ObjectInputStream$ValidationList;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$ValidationList$Callback;
    }
.end annotation


# instance fields
.field private greylist-max-o list:Ljava/io/ObjectInputStream$ValidationList$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlist(Ljava/io/ObjectInputStream$ValidationList;)Ljava/io/ObjectInputStream$ValidationList$Callback;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    return-object p0
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 2563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2564
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 2

    .line 2620
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    .line 2621
    return-void
.end method

.method greylist-max-o doCallbacks()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2599
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    if-eqz v0, :cond_18

    .line 2600
    new-instance v0, Ljava/io/ObjectInputStream$ValidationList$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream$ValidationList$1;-><init>(Ljava/io/ObjectInputStream$ValidationList;)V

    iget-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    iget-object v1, v1, Ljava/io/ObjectInputStream$ValidationList$Callback;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 2608
    iget-object v0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    iget-object v0, v0, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    iput-object v0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;
    :try_end_17
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_17} :catch_1a

    goto :goto_1

    .line 2613
    :cond_18
    nop

    .line 2614
    return-void

    .line 2610
    :catch_1a
    move-exception v0

    .line 2611
    .local v0, "ex":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    .line 2612
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/InvalidObjectException;

    throw v1
.end method

.method greylist-max-o register(Ljava/io/ObjectInputValidation;I)V
    .registers 8
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2573
    if-eqz p1, :cond_27

    .line 2577
    const/4 v0, 0x0

    .local v0, "prev":Ljava/io/ObjectInputStream$ValidationList$Callback;
    iget-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    .line 2578
    .local v1, "cur":Ljava/io/ObjectInputStream$ValidationList$Callback;
    :goto_5
    if-eqz v1, :cond_f

    iget v2, v1, Ljava/io/ObjectInputStream$ValidationList$Callback;->priority:I

    if-ge p2, v2, :cond_f

    .line 2579
    move-object v0, v1

    .line 2580
    iget-object v1, v1, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    goto :goto_5

    .line 2582
    :cond_f
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 2583
    .local v2, "acc":Ljava/security/AccessControlContext;
    if-eqz v0, :cond_1d

    .line 2584
    new-instance v3, Ljava/io/ObjectInputStream$ValidationList$Callback;

    invoke-direct {v3, p1, p2, v1, v2}, Ljava/io/ObjectInputStream$ValidationList$Callback;-><init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V

    iput-object v3, v0, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    goto :goto_26

    .line 2586
    :cond_1d
    new-instance v3, Ljava/io/ObjectInputStream$ValidationList$Callback;

    iget-object v4, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    invoke-direct {v3, p1, p2, v4, v2}, Ljava/io/ObjectInputStream$ValidationList$Callback;-><init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V

    iput-object v3, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    .line 2588
    :goto_26
    return-void

    .line 2574
    .end local v0    # "prev":Ljava/io/ObjectInputStream$ValidationList$Callback;
    .end local v1    # "cur":Ljava/io/ObjectInputStream$ValidationList$Callback;
    .end local v2    # "acc":Ljava/security/AccessControlContext;
    :cond_27
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null callback"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
