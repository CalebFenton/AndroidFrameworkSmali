.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;
.super Ljava/lang/Object;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/ExternalSession$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$mprovideSession(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method
