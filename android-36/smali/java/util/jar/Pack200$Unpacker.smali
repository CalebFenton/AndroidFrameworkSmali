.class public interface abstract Ljava/util/jar/Pack200$Unpacker;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Pack200;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Unpacker"
.end annotation


# static fields
.field public static final whitelist test-api DEFLATE_HINT:Ljava/lang/String; = "unpack.deflate.hint"

.field public static final whitelist test-api FALSE:Ljava/lang/String; = "false"

.field public static final whitelist test-api KEEP:Ljava/lang/String; = "keep"

.field public static final whitelist test-api PROGRESS:Ljava/lang/String; = "unpack.progress"

.field public static final whitelist test-api TRUE:Ljava/lang/String; = "true"


# virtual methods
.method public whitelist test-api addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    return-void
.end method

.method public abstract whitelist test-api properties()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist test-api removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    return-void
.end method

.method public abstract whitelist test-api unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
