.class Lcom/android/internal/telephony/test/InterpreterEx;
.super Ljava/lang/Exception;
.source "ModelInterpreter.java"


# instance fields
.field mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/test/InterpreterEx;->mResult:Ljava/lang/String;

    #@5
    .line 125
    return-void
.end method
