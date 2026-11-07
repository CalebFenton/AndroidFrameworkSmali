.class public interface abstract Ljava/util/jar/Pack200$Packer;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Pack200;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Packer"
.end annotation


# static fields
.field public static final whitelist test-api CLASS_ATTRIBUTE_PFX:Ljava/lang/String; = "pack.class.attribute."

.field public static final whitelist test-api CODE_ATTRIBUTE_PFX:Ljava/lang/String; = "pack.code.attribute."

.field public static final whitelist test-api DEFLATE_HINT:Ljava/lang/String; = "pack.deflate.hint"

.field public static final whitelist test-api EFFORT:Ljava/lang/String; = "pack.effort"

.field public static final whitelist test-api ERROR:Ljava/lang/String; = "error"

.field public static final whitelist test-api FALSE:Ljava/lang/String; = "false"

.field public static final whitelist test-api FIELD_ATTRIBUTE_PFX:Ljava/lang/String; = "pack.field.attribute."

.field public static final whitelist test-api KEEP:Ljava/lang/String; = "keep"

.field public static final whitelist test-api KEEP_FILE_ORDER:Ljava/lang/String; = "pack.keep.file.order"

.field public static final whitelist test-api LATEST:Ljava/lang/String; = "latest"

.field public static final whitelist test-api METHOD_ATTRIBUTE_PFX:Ljava/lang/String; = "pack.method.attribute."

.field public static final whitelist test-api MODIFICATION_TIME:Ljava/lang/String; = "pack.modification.time"

.field public static final whitelist test-api PASS:Ljava/lang/String; = "pass"

.field public static final whitelist test-api PASS_FILE_PFX:Ljava/lang/String; = "pack.pass.file."

.field public static final whitelist test-api PROGRESS:Ljava/lang/String; = "pack.progress"

.field public static final whitelist test-api SEGMENT_LIMIT:Ljava/lang/String; = "pack.segment.limit"

.field public static final whitelist test-api STRIP:Ljava/lang/String; = "strip"

.field public static final whitelist test-api TRUE:Ljava/lang/String; = "true"

.field public static final whitelist test-api UNKNOWN_ATTRIBUTE:Ljava/lang/String; = "pack.unknown.attribute"


# virtual methods
.method public whitelist test-api addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    return-void
.end method

.method public abstract whitelist test-api pack(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api pack(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

    .line 621
    return-void
.end method
