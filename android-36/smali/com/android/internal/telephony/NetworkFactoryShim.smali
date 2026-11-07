.class interface abstract Lcom/android/internal/telephony/NetworkFactoryShim;
.super Ljava/lang/Object;
.source "NetworkFactoryShim.java"


# virtual methods
.method public abstract blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract blacklist getLooper()Landroid/os/Looper;
.end method

.method public abstract blacklist getProvider()Landroid/net/NetworkProvider;
.end method

.method public abstract blacklist getRequestCount()I
.end method

.method public abstract blacklist getSerialNumber()I
.end method

.method public abstract blacklist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
.end method

.method public abstract blacklist reevaluateAllRequests()V
.end method

.method public abstract blacklist register(Ljava/lang/String;)V
.end method

.method public blacklist registerIgnoringScore(Ljava/lang/String;)V
    .registers 2

    .line 43
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract blacklist releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
.end method

.method public abstract blacklist setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract blacklist setScoreFilter(I)V
.end method

.method public abstract blacklist setScoreFilter(Landroid/net/NetworkScore;)V
.end method

.method public abstract blacklist terminate()V
.end method
