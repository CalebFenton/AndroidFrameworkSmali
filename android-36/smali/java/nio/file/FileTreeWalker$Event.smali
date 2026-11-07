.class Ljava/nio/file/FileTreeWalker$Event;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field private final blacklist attrs:Ljava/nio/file/attribute/BasicFileAttributes;

.field private final blacklist file:Ljava/nio/file/Path;

.field private final blacklist ioe:Ljava/io/IOException;

.field private final blacklist type:Ljava/nio/file/FileTreeWalker$EventType;


# direct methods
.method constructor blacklist <init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V
    .registers 5
    .param p1, "type"    # Ljava/nio/file/FileTreeWalker$EventType;
    .param p2, "file"    # Ljava/nio/file/Path;
    .param p3, "ioe"    # Ljava/io/IOException;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    .line 146
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .registers 5
    .param p1, "type"    # Ljava/nio/file/FileTreeWalker$EventType;
    .param p2, "file"    # Ljava/nio/file/Path;
    .param p3, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    .line 142
    return-void
.end method

.method private constructor blacklist <init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V
    .registers 5
    .param p1, "type"    # Ljava/nio/file/FileTreeWalker$EventType;
    .param p2, "file"    # Ljava/nio/file/Path;
    .param p3, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .param p4, "ioe"    # Ljava/io/IOException;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Ljava/nio/file/FileTreeWalker$Event;->type:Ljava/nio/file/FileTreeWalker$EventType;

    .line 135
    iput-object p2, p0, Ljava/nio/file/FileTreeWalker$Event;->file:Ljava/nio/file/Path;

    .line 136
    iput-object p3, p0, Ljava/nio/file/FileTreeWalker$Event;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    .line 137
    iput-object p4, p0, Ljava/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    .line 138
    return-void
.end method


# virtual methods
.method blacklist attributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2

    .line 157
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    return-object v0
.end method

.method blacklist file()Ljava/nio/file/Path;
    .registers 2

    .line 153
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->file:Ljava/nio/file/Path;

    return-object v0
.end method

.method blacklist ioeException()Ljava/io/IOException;
    .registers 2

    .line 161
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    return-object v0
.end method

.method blacklist type()Ljava/nio/file/FileTreeWalker$EventType;
    .registers 2

    .line 149
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->type:Ljava/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
