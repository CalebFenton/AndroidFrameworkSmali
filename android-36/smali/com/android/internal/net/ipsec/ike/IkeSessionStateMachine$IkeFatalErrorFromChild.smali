.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IkeFatalErrorFromChild"
.end annotation


# instance fields
.field public final blacklist exception:Ljava/lang/Exception;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1126
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;->exception:Ljava/lang/Exception;

    .line 1127
    return-void
.end method
