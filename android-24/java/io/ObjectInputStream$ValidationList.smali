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
.field private list:Ljava/io/ObjectInputStream$ValidationList$Callback;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectInputStream$ValidationList;)Ljava/io/ObjectInputStream$ValidationList$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@2
    return-object v0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2273
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@3
    .line 2272
    return-void
.end method

.method doCallbacks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2252
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2254
    new-instance v1, Ljava/io/ObjectInputStream$ValidationList$1;

    #@7
    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream$ValidationList$1;-><init>(Ljava/io/ObjectInputStream$ValidationList;)V

    #@a
    .line 2260
    iget-object v2, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@c
    iget-object v2, v2, Ljava/io/ObjectInputStream$ValidationList$Callback;->acc:Ljava/security/AccessControlContext;

    #@e
    .line 2253
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@11
    .line 2261
    iget-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@13
    iget-object v1, v1, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@15
    iput-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 2263
    :catch_0
    move-exception v0

    #@19
    .line 2264
    .local v0, "ex":Ljava/security/PrivilegedActionException;
    iput-object v3, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@1b
    .line 2265
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/io/InvalidObjectException;

    #@21
    throw v1

    #@22
    .line 2250
    .end local v0    # "ex":Ljava/security/PrivilegedActionException;
    :cond_0
    return-void
.end method

.method register(Ljava/io/ObjectInputValidation;I)V
    .locals 5
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 2226
    if-nez p1, :cond_0

    #@2
    .line 2227
    new-instance v3, Ljava/io/InvalidObjectException;

    #@4
    const-string/jumbo v4, "null callback"

    #@7
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 2230
    :cond_0
    const/4 v2, 0x0

    #@c
    .local v2, "prev":Ljava/io/ObjectInputStream$ValidationList$Callback;
    iget-object v1, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@e
    .line 2231
    .end local v2    # "prev":Ljava/io/ObjectInputStream$ValidationList$Callback;
    .local v1, "cur":Ljava/io/ObjectInputStream$ValidationList$Callback;
    :goto_0
    if-eqz v1, :cond_1

    #@10
    iget v3, v1, Ljava/io/ObjectInputStream$ValidationList$Callback;->priority:I

    #@12
    if-ge p2, v3, :cond_1

    #@14
    .line 2232
    move-object v2, v1

    #@15
    .line 2233
    .local v2, "prev":Ljava/io/ObjectInputStream$ValidationList$Callback;
    iget-object v1, v1, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@17
    goto :goto_0

    #@18
    .line 2235
    .end local v2    # "prev":Ljava/io/ObjectInputStream$ValidationList$Callback;
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@1b
    move-result-object v0

    #@1c
    .line 2236
    .local v0, "acc":Ljava/security/AccessControlContext;
    if-eqz v2, :cond_2

    #@1e
    .line 2237
    new-instance v3, Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@20
    invoke-direct {v3, p1, p2, v1, v0}, Ljava/io/ObjectInputStream$ValidationList$Callback;-><init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V

    #@23
    iput-object v3, v2, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@25
    .line 2224
    :goto_1
    return-void

    #@26
    .line 2239
    :cond_2
    new-instance v3, Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@28
    iget-object v4, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@2a
    invoke-direct {v3, p1, p2, v4, v0}, Ljava/io/ObjectInputStream$ValidationList$Callback;-><init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V

    #@2d
    iput-object v3, p0, Ljava/io/ObjectInputStream$ValidationList;->list:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@2f
    goto :goto_1
.end method
